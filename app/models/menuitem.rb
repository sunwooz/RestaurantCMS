class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image
  
  validates_presence_of :image
  
  has_attached_file :image, :styles => { :small => "150x150>" }
end
