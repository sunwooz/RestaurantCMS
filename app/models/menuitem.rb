class Menuitem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image

  validates_presence_of :image, :name, :description, :price
  validates_numericality_of :price, :only_integer => false

  belongs_to :restaurant

  has_attached_file :image,
    :styles => {
      :thumbnail => '100x101>',
      :regular => '560x568>'
    },
    :storage => :s3,
    :s3_credentials => {
      :bucket => ENV['AWS_BUCKET'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    },
    :path => ":filename.:extension"
end
