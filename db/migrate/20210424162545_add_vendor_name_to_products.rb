class AddVendorNameToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :vendor_name, :string
  end
end
