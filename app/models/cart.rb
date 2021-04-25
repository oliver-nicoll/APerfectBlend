class Cart < ApplicationRecord 
    belongs_to :user
    has_many :cart_products
    has_many :products, through: :cart_products

    validates :checkout, inclusion: [true, false]
    validates :user_id, numericality: { only_integer: true }
end
