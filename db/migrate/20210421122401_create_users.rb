class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :vendor
      t.integer :role 
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :uid


      t.timestamps
    end
  end
end
