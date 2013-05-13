class Company < ActiveRecord::Base
  attr_accessible :created, :email, :name, :phone
  has_many :users
  
  validates :name,  :presence => true
  validates :phone, :presence => true, :length => { :minimum => 10 }
end
