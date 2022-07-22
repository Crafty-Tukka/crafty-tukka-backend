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

ActiveRecord::Schema.define(version: 2022_07_22_063838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "start"
    t.string "description"
    t.bigint "truck_id", null: false
    t.bigint "venue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "finish"
    t.boolean "confirmed"
    t.index ["truck_id"], name: "index_events_on_truck_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "password_digest"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "mobile"
    t.string "google_maps"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "description"
    t.string "google_maps"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "mobile"
  end

  add_foreign_key "events", "trucks"
  add_foreign_key "events", "venues"
end
