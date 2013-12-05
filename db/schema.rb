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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131121220109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_classes", force: true do |t|
    t.integer  "class_type_id"
    t.string   "title"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "eventbrite_id"
    t.string   "eventbrite_url"
    t.string   "event_street"
    t.text     "event_description"
    t.string   "event_state"
    t.string   "event_city"
    t.string   "event_zip"
    t.decimal  "event_lat",         precision: 10, scale: 8
    t.decimal  "event_long",        precision: 11, scale: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
