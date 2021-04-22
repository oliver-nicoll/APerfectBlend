class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.integer :sold_at
      t.integer :instock

      t.timestamps
    end
  end
end
