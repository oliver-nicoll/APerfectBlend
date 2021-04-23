class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :vendor 
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
