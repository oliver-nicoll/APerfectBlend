class CreateCartProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_products do |t|
      belongs_to :product 
      belongs_to :cart
      t.integer :quantity

      t.timestamps
    end
  end
end
