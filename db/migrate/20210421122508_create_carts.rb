class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :user
      t.boolean :checkout

      t.timestamps
    end
  end
end
