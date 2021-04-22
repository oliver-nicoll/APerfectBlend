class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.belongs_to :product_id
      t.belongs_to :order_id
      t.integer :quantity
    

      t.timestamps
    end
  end
end
