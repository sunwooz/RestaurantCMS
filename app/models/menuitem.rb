class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image
  
  has_attached_file :image, :styles => { :small => "150x150>" }
end
