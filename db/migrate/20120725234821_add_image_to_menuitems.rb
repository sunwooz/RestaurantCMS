class AddImageToMenuitems < ActiveRecord::Migration
  def self.up
    add_column :menuitems, :image_file_name,    :string
    add_column :menuitems, :image_content_type, :string
    add_column :menuitems, :image_file_size,    :integer
    add_column :menuitems, :image_upadated_at,  :datetime
    
  end
  
  def self.down
    remove_column :menuitems, :image_file_name
    remove_column :menuitems, :image_content_type
    remove_column :menuitems, :image_file_size
    remove_column :menuitems, :image_upadated_at
  end
end
