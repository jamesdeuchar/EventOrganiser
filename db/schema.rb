# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130216080212) do

  create_table "event_series", :force => true do |t|
    t.string   "series_name"
    t.string   "series_administrator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibitor_categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibitors", :force => true do |t|
    t.string   "company_name"
    t.string   "company_website"
    t.string   "source"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "rating"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_phone_1"
    t.string   "contact_phone_1_type"
    t.string   "contact_phone_2"
    t.string   "contact_phone_2_type"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.string   "town"
    t.string   "county"
    t.string   "post_code"
    t.string   "contact_email"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
