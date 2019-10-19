# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_19_194724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "symbol"
    t.float "current_price"
    t.float "cap_price"
    t.float "floor_price"
    t.datetime "expected_alert_till_date"
    t.string "mobile_number"
    t.boolean "phone_alert"
    t.boolean "message_alert"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "price_alert_alarms", force: :cascade do |t|
    t.string "name"
    t.string "alert_type"
    t.string "symbol"
    t.float "current_price"
    t.float "cap_price"
    t.float "floor_price"
    t.datetime "expected_alert_till_date"
    t.string "mobile_number"
    t.boolean "phone_alert"
    t.boolean "message_alert"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "price_alerts", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "symbol"
    t.float "current_price"
    t.float "cap_price"
    t.float "floor_price"
    t.datetime "expected_alert_till_date"
    t.string "mobile_number"
    t.boolean "phone_alert"
    t.boolean "message_alert"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
