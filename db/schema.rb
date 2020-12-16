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

ActiveRecord::Schema.define(version: 2020_12_16_073605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", primary_key: "cust_id", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer "rate_type"
    t.integer "category"
    t.integer "weekly"
    t.integer "daily"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "order_date"
    t.integer "rental_type"
    t.integer "qty"
    t.datetime "return_date"
    t.float "total_amount"
    t.datetime "payment_date"
    t.string "vehicle_id"
    t.integer "cust_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cust_id"], name: "index_rentals_on_cust_id"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", id: false, force: :cascade do |t|
    t.string "vehicle_id"
    t.string "description"
    t.integer "year"
    t.integer "category"
    t.integer "vehicle_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
