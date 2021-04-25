class User < ApplicationRecord
    has_secure_password
    
    has_one :cart
    has_many :products, through: :cart

    
    validates :email, presence: true 
    validates :username, presence: true 
    validates :name, length: { minimum: 2 }
    validates :password, length: { in: 6..20 }
    validates :vendor, inclusion: [true, false]
end
