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

ActiveRecord::Schema.define(version: 20180904012736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bicycle_payments", force: :cascade do |t|
    t.integer "amount"
    t.bigint "reservation_id"
    t.bigint "bicycle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_bicycle_payments_on_bicycle_id"
    t.index ["reservation_id"], name: "index_bicycle_payments_on_reservation_id"
  end

  create_table "bicycles", force: :cascade do |t|
    t.string "model"
    t.bigint "ring_size"
    t.string "tipo"
    t.bigint "value"
    t.bigint "cabin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "payment_id"
    t.index ["cabin_id"], name: "index_bicycles_on_cabin_id"
    t.index ["payment_id"], name: "index_bicycles_on_payment_id"
  end

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.text "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rut"
  end

  create_table "product_payments", force: :cascade do |t|
    t.integer "amount"
    t.bigint "reservation_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_payments_on_product_id"
    t.index ["reservation_id"], name: "index_product_payments_on_reservation_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "quantity"
    t.bigint "price"
    t.bigint "cabin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "payment_id"
    t.index ["cabin_id"], name: "index_products_on_cabin_id"
    t.index ["payment_id"], name: "index_products_on_payment_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "cabin_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state", default: "sin pagar"
    t.integer "price"
    t.index ["cabin_id"], name: "index_reservations_on_cabin_id"
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
  end

  create_table "service_payments", force: :cascade do |t|
    t.integer "amount"
    t.bigint "reservation_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_service_payments_on_reservation_id"
    t.index ["service_id"], name: "index_service_payments_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.bigint "value"
    t.bigint "cabin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "payment_id"
    t.index ["cabin_id"], name: "index_services_on_cabin_id"
    t.index ["payment_id"], name: "index_services_on_payment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "permission_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bicycle_payments", "bicycles"
  add_foreign_key "bicycle_payments", "reservations"
  add_foreign_key "bicycles", "cabins"
  add_foreign_key "product_payments", "products"
  add_foreign_key "product_payments", "reservations"
  add_foreign_key "products", "cabins"
  add_foreign_key "reservations", "cabins"
  add_foreign_key "reservations", "customers"
  add_foreign_key "service_payments", "reservations"
  add_foreign_key "service_payments", "services"
  add_foreign_key "services", "cabins"
end
