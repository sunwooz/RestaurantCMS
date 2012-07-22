class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.timestamps
    end
  end
end
