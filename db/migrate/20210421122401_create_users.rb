class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :vendor 
      t.string :username
      t.string :name
      t.email :email
      t.password :password_digest

      t.timestamps
    end
  end
end
