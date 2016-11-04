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

ActiveRecord::Schema.define(version: 20161104150646) do

  create_table "areas", force: :cascade do |t|
    t.string   "area_name"
    t.integer  "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.integer  "stars"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "address"
    t.string   "area"
    t.integer  "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "order_price"
    t.date     "delivery_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "quantity"
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "supplier_id"
    t.decimal  "price"
    t.integer  "quantity"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "supplier_name"
    t.integer  "area_id"
    t.string   "password_digest"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "table_orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "order_price"
    t.date    "delivery_date"
  end

  create_table "tables", force: :cascade do |t|
    t.string  "orders"
    t.integer "customer_id"
    t.integer "order_price"
    t.date    "delivery_date"
  end

end
