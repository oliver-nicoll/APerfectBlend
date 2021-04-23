class CreateCartProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_products do |t|
      t.references :product 
      t.references :cart
      t.integer :quantity

      t.timestamps
    end
  end
end
