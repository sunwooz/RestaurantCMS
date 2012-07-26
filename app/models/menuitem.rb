class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image
  attr_accessor :image_file_name
  
  has_attached_file :image, :styles => { :small => "150x150>" }
end
