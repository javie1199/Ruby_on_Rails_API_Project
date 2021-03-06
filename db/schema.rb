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

ActiveRecord::Schema.define(version: 2019_10_03_004155) do

  create_table "checkins", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_checkins", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "checkin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checkin_id"], name: "index_customer_checkins_on_checkin_id"
    t.index ["customer_id"], name: "index_customer_checkins_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "birth_date"
    t.string "phone_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "checkin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checkin_id"], name: "index_services_on_checkin_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "name"
    t.integer "checkin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checkin_id"], name: "index_technicians_on_checkin_id"
  end

  add_foreign_key "customer_checkins", "checkins"
  add_foreign_key "customer_checkins", "customers"
  add_foreign_key "services", "checkins"
  add_foreign_key "technicians", "checkins"
end
