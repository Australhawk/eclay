class Work < ActiveRecord::Base
  attr_accessible :descripcion, :name, :url, :image
  
  has_attached_file :image, :styles => { :medium => "300x200>", :thumb => "100x100>" }, :default_url => "none"
  validates :descripcion, :presence => true
  validates :name, :presence => true
  validates :url, :presence => true
  validates_attachment :image, :size => { :in => 0..2048.kilobytes }
  validates_attachment_content_type :image, :content_type => /image/ 
  

end
