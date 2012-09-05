class AddRestaurantIdToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :restaurant_id, :integer
  end
end
