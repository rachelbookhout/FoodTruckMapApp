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

ActiveRecord::Schema.define(version: 20160424194557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.integer "cuisine_id", null: false
    t.string  "name"
  end

  create_table "days", force: :cascade do |t|
    t.integer "day_id",    null: false
    t.string  "dayofweek", null: false
  end

  create_table "foodtruckLocationDayTimes", force: :cascade do |t|
    t.integer "mealtime_id",  null: false
    t.integer "day_id",       null: false
    t.integer "foodtruck_id", null: false
    t.integer "location_id",  null: false
  end

  create_table "foodtrucks", force: :cascade do |t|
    t.string  "name",       null: false
    t.integer "cuisine_id"
    t.string  "photo"
    t.string  "url"
    t.string  "twitter"
  end

  create_table "locations", force: :cascade do |t|
    t.string  "name",      null: false
    t.integer "latitude",  null: false
    t.integer "longitude", null: false
  end

  create_table "mealtimes", force: :cascade do |t|
    t.integer "mealtime_id", null: false
    t.string  "meal",        null: false
  end

end
