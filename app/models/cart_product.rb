class CartProduct < ApplicationRecord
    belongs_to :cart 
    belongs_to :user

    validates :product_id, numericality: { only_integer: true }
    validates :cart_id, numericality: { only_integer: true }
    validates :quantity, numericality: { only_integer: true }

    def cart_total

    end
end
