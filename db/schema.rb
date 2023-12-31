# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_13_211015) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deliveries", force: :cascade do |t|
    t.string "lat"
    t.string "lng"
    t.string "day"
    t.string "sign"
    t.string "client_fullname"
    t.string "client_phone"
    t.string "client_email"
    t.datetime "event_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "locationable_type", null: false
    t.bigint "locationable_id", null: false
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locationable_type", "locationable_id"], name: "index_locations_on_locationable"
    t.index ["route_id"], name: "index_locations_on_route_id"
  end

  create_table "pickups", force: :cascade do |t|
    t.string "lat"
    t.string "lng"
    t.string "day"
    t.string "sign"
    t.string "client_fullname"
    t.string "client_phone"
    t.string "client_email"
    t.datetime "event_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.date "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
