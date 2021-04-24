class CartProduct < ApplicationRecord
    belongs_to :cart 
    belongs_to :user

    def cart_total

    end
end
