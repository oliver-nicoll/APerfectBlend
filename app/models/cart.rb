class Cart < ApplicationRecord 
    has_many :products 
    belongs_to :user

    def cart_total
        
    end
end
