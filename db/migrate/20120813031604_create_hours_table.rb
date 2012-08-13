class CreateHoursTable < ActiveRecord::Migration
  def self.up
    create_table :hours do |t|
      t.string :from_monday, :string
      t.string :to_monday, :string
      t.string :from_tuesday, :string
      t.string :to_tuesday, :string
      t.string :from_wednesday, :string
      t.string :to_wednesday, :string
      t.string :from_thursday, :string
      t.string :to_thursday, :string
      t.string :from_friday, :string
      t.string :to_friday, :string
      t.string :from_saturday, :string
      t.string :to_saturday, :string
      t.string :from_sunday, :string
      t.string :to_sunday, :string
    end
  end

  def self.down
    destroy_table :hours
  end
end