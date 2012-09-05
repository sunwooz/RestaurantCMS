class AddUserIdToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :user_id, :integer
  end
end
