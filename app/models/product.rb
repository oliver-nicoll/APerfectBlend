class Product < ApplicationRecord
    has_many :cart_products
    has_many :carts, through: :cart_products
    has_many :users, through: :carts 

    validates :product_name, presence: true, uniqueness: {scope: :image_url, message: 'and Image Url are not UNIQUE'}
    validates :product_description, presence: true 
    validates :vendor_name, presence: true 
    validates :image_url, presence: true, image_url_format: { on: :create }
    validates :sold_at, numericality: { only_integer: true, greater_than_or_equal_to: 0}
    has_one_attached :image

    scope :search, -> (query) { self.where("product_name LIKE ?", "%#{query}%") }
    # def self.search(query)
    #     self.where("product_name LIKE ?", "%#{query}%")
    # end

    def image_url
        Rails.application.routes.url_helpers.rails_representation_url(image.variant(resize: '100x100').processed)
      end
end
