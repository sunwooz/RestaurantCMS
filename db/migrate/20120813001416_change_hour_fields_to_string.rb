class ChangeHourFieldsToString < ActiveRecord::Migration
  def self.up
    change_column :hours, :from_monday, :string
    change_column :hours, :to_monday, :string
    change_column :hours, :from_tuesday, :string
    change_column :hours, :to_tuesday, :string
    change_column :hours, :from_wednesday, :string
    change_column :hours, :to_wednesday, :string
    change_column :hours, :from_thursday, :string
    change_column :hours, :to_thursday, :string
    change_column :hours, :from_friday, :string
    change_column :hours, :to_friday, :string
    change_column :hours, :from_saturday, :string
    change_column :hours, :to_saturday, :string
    change_column :hours, :from_sunday, :string
    change_column :hours, :to_sunday, :string
  end

  def self.down
  end
end
