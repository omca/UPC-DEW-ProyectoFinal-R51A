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

ActiveRecord::Schema.define(:version => 20130529053419) do

  create_table "assistances", :force => true do |t|
    t.integer  "concert_id"
    t.integer  "user_id"
    t.integer  "assistance_flag"
    t.integer  "score"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.integer  "style_id"
    t.integer  "create_user"
    t.integer  "edit_user"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "concert_id"
    t.string   "text"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "edit_user"
    t.integer  "create_user"
    t.integer  "user_id"
  end

  create_table "concerts", :force => true do |t|
    t.string   "name"
    t.integer  "local_id"
    t.integer  "band_id"
    t.datetime "date"
    t.datetime "begin_time"
    t.datetime "end_time"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "doc_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "district_id"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "phone"
    t.boolean  "gmaps"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "sexes", :force => true do |t|
    t.string   "name_abv"
    t.string   "name"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "edit_user"
    t.integer  "create_user"
  end

  create_table "user_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "users", :force => true do |t|
    t.integer  "user_type_id"
    t.string   "name"
    t.string   "last_name"
    t.string   "surname"
    t.integer  "sex_id"
    t.integer  "doc_type_id"
    t.string   "doc_number"
    t.string   "user_name"
    t.string   "mail"
    t.string   "password"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "create_user"
    t.integer  "edit_user"
  end

  create_table "users_bands", :force => true do |t|
    t.integer  "band_id"
    t.integer  "user_id"
    t.integer  "create_user"
    t.integer  "edit_user"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
