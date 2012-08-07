class AddRestaurantidToMenuitem < ActiveRecord::Migration
  def change
    add_column :menuitems, :restaurant_id, :integer
  end
end
