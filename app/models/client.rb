class Client < ActiveRecord::Base
  belongs_to :company
  attr_accessible :created_at, :email, :lock_version, :name, :phone, :updated_at
end
