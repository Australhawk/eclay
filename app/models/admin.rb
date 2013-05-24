class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  	if Rails.env.production?
  		devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
	else
  		devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable 
	end

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name
  # attr_accessible :title, :body
end
