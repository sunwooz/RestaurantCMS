# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120806004622) do

  create_table "hours", :force => true do |t|
    t.datetime "from_monday"
    t.datetime "to_monday"
    t.datetime "from_tuesday"
    t.datetime "to_tuesday"
    t.datetime "from_wednesday"
    t.datetime "to_wednesday"
    t.datetime "from_thursday"
    t.datetime "to_thursday"
    t.datetime "from_friday"
    t.datetime "to_friday"
    t.datetime "from_saturday"
    t.datetime "to_saturday"
    t.datetime "from_sunday"
    t.datetime "to_sunday"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "restaurant_id"
  end

  create_table "menuitems", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_upadated_at"
    t.integer  "restaurant_id"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
