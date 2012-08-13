class CreateHoursTable < ActiveRecord::Migration
  def self.up
    create_table :hours do |t|
      t.string :from_monday
      t.string :to_monday
      t.string :from_tuesday
      t.string :to_tuesday
      t.string :from_wednesday
      t.string :to_wednesday
      t.string :from_thursday
      t.string :to_thursday
      t.string :from_friday
      t.string :to_friday
      t.string :from_saturday
      t.string :to_saturday
      t.string :from_sunday
      t.string :to_sunday
      t.integer :restaurant_id
    end
  end

  def self.down
    destroy_table :hours
  end
end