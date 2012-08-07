class CreateRestaurantMenuitemTable < ActiveRecord::Migration
  def up
    create_table :menuitem_restaurants do |f|
      f.integer :menuitem_id
      f.integer :restaurant_id
      f.datetime
    end
  end

  def down
    destroy_table :menuitem_restaurants
  end
end
