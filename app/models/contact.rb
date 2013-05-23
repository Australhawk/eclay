class Contact < ActiveRecord::Base
  attr_accessible :business, :description, :email, :name, :phone
end
