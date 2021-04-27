class Product < ApplicationRecord
    before_destroy :not_referenced_by_any_cart_product
    has_many :cart_products
    has_many :carts, through: :cart_products
    has_many :users, through: :carts

    mount_uploader :image, ImageUploader
    serialize :image, JSON

    validates :product_name, presence: true, uniqueness: {scope: :image, message: 'and Image Url are not UNIQUE'}
    validates :product_description, :vendor_name, :instock, presence: true 
    validates :sold_at, numericality: { only_integer: true, greater_than_or_equal_to: 0}
    
    
    has_one_attached :image do |attachable|
        attachable.variant :thumb, resize: "100x100"
    end


    scope :search, -> (query) { self.where("product_name LIKE ?", "%#{query}%") }
    
    CATEGORY = %w{ Candle Decor Jewelry Food Furniture Soap Other }

    def not_referenced_by_any_cart_product
        unless cart_products.empty?
            errors.add(:base, "Cart products present")
            throw :abort
        end
    end
end
