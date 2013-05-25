class Contact < ActiveRecord::Base
  attr_accessible :business, :description, :email, :name, :phone
  validates :name, :presence => true
  validates :email, :presence => true
  validates :description, :presence => true
  
end
