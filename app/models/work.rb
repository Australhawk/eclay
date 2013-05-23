class Work < ActiveRecord::Base
  attr_accessible :descripcion, :name, :url
  validates :descripcion, :presence => true
  validates :name, :presence => true
  validates :url, :presence => true
end
