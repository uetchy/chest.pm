class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt
      t.string :name, null: false # Must be lowercase and URL-safe characters
      t.datetime :deleted_at
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
