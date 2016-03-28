class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :hash_password
      t.string :city
      t.string :state
      t.string :email
      t.timestamps
    end
  end
end
