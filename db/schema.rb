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

ActiveRecord::Schema.define(:version => 20130206175300) do

  create_table "event_series", :force => true do |t|
    t.string   "series_name"
    t.string   "series_administrator"
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
  end

end
