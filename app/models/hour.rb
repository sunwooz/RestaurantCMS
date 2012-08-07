class Hour < ActiveRecord::Base
  attr_accessible :from_monday, :to_monday, :from_tuesday, :to_tuesday, :from_wednesday, :to_wednesday, :from_thursday, :to_thursday, :from_friday, :to_friday, :from_saturday, :to_saturday, :from_sunday, :to_sunday

  validates_uniqueness_of :restaurant_id

  belongs_to :restaurant
end
