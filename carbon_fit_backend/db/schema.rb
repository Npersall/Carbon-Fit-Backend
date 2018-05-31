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

ActiveRecord::Schema.define(version: 20180531215410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breaks", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "shift_logs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_logs_id"], name: "index_breaks_on_shift_logs_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "business_identifier"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employee_identifier"
    t.bigint "businesses_id"
    t.index ["businesses_id"], name: "index_employees_on_businesses_id"
  end

  create_table "shift_logs", force: :cascade do |t|
    t.datetime "log_start"
    t.datetime "log_end"
    t.integer "tracked_miles"
    t.integer "total_shift_footprint"
    t.integer "start_odometer"
    t.integer "end_odometer"
    t.bigint "vehicles_id"
    t.bigint "employees_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employees_id"], name: "index_shift_logs_on_employees_id"
    t.index ["vehicles_id"], name: "index_shift_logs_on_vehicles_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "year"
    t.string "model"
    t.string "make"
    t.integer "mpg"
    t.integer "total_miles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "businesses", column: "businesses_id"
end
