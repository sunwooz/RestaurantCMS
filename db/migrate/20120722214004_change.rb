class Change < ActiveRecord::Migration
  def up
    change_column :menuitems, :price, :string
  end

  def down
  end
end
