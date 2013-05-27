class User < ActiveRecord::Base
  belongs_to :company
  attr_accessible :created_at, :email, :firstName, :lastName, :lock_version, :crypted_password, :phone, :updated_at, :password, :password_confirmation,
                  :password_salt, :persistence_token, :perishable_token, :failed_login_count, :last_login_at, :last_login_ip

  acts_as_authentic do |c|    
  end
end
