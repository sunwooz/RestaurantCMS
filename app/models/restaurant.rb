class Restaurant < ActiveRecord::Base
  attr_accessible :name, :description

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :menuitems, :dependent => :destroy
  has_one :hour, :dependent => :destroy
end
