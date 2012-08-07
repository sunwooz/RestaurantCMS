class RemoveMenuitemRestaurantTable < ActiveRecord::Migration
  def up
    drop_table :menuitem_restaurants
  end

  def down
  end
end
