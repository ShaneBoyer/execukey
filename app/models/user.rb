class User < ActiveRecord::Base
  belongs_to :company
  attr_accessible :confirmed, :created_at, :email, :firstName, :lastName, :lock_version, :password, :phone, :updated_at
end
