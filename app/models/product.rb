class Product < ApplicationRecord
    has_many :orders, through: :user
end
