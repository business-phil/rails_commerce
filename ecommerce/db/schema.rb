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

ActiveRecord::Schema.define(version: 20160927180629) do

  create_table "categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "product_id"
    t.string   "location"
    t.text     "meta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id"

  create_table "orderproducts", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orderproducts", ["order_id"], name: "index_orderproducts_on_order_id"
  add_index "orderproducts", ["product_id"], name: "index_orderproducts_on_product_id"

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.string   "status"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "productcategories", force: true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productcategories", ["category_id"], name: "index_productcategories_on_category_id"
  add_index "productcategories", ["product_id"], name: "index_productcategories_on_product_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
