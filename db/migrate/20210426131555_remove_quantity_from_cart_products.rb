class RemoveQuantityFromCartProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :cart_products, :quantity, :integer
  end
end
