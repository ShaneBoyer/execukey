class AddUserColumnsForAuthLogic < ActiveRecord::Migration
  def change
    rename_column :users, :password, :crypted_password
    remove_column :users, :confirmed
    add_column :users, :password_salt, :string
    add_column :users, :persistence_token, :string
    add_column :users, :perishable_token, :string
    add_column :users, :failed_login_count, :integer
    add_column :users, :last_login_at, :datetime
    add_column :users, :last_login_ip, :string
    
    add_index :users, :perishable_token  
    add_index :users, :email
  end
end
