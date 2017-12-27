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

ActiveRecord::Schema.define(version: 20171225141834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barcodes", force: :cascade do |t|
    t.string "code"
    t.bigint "product_info_id", null: false
    t.boolean "is_english"
    t.boolean "is_polish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_info_id"], name: "index_barcodes_on_product_info_id"
  end

  create_table "default_prices", force: :cascade do |t|
    t.bigint "product_info_id", null: false
    t.decimal "buy_price_used_en", precision: 8, scale: 2, default: "0.0", null: false
    t.decimal "buy_price_used_pl", precision: 8, scale: 2, default: "0.0", null: false
    t.decimal "sell_price_used_en", precision: 8, scale: 2, default: "0.0", null: false
    t.decimal "sell_price_used_pl", precision: 8, scale: 2, default: "0.0", null: false
    t.decimal "buy_price_new_en", precision: 8, scale: 2, default: "0.0", null: false
    t.decimal "buy_price_new_pl", precision: 8, scale: 2, default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_info_id"], name: "index_default_prices_on_product_info_id"
  end

  create_table "money_transaction_details", force: :cascade do |t|
    t.bigint "transaction_id"
    t.string "type", default: "", null: false
    t.decimal "quantity", precision: 8, scale: 2, default: "0.0", null: false
    t.string "description"
    t.index ["transaction_id"], name: "index_money_transaction_details_on_transaction_id"
  end

  create_table "product_infos", force: :cascade do |t|
    t.string "name_en", default: "", null: false
    t.string "name_pl", default: "", null: false
    t.string "category", default: "", null: false
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_transaction_details", force: :cascade do |t|
    t.bigint "transaction_id"
    t.bigint "product_id"
    t.string "type", default: "t", null: false
    t.integer "quantity", default: 0, null: false
    t.decimal "sell_price", precision: 8, scale: 2, default: "0.0", null: false
    t.string "description"
    t.index ["product_id"], name: "index_product_transaction_details_on_product_id"
    t.index ["transaction_id"], name: "index_product_transaction_details_on_transaction_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "barcode_id"
    t.bigint "shop_id"
    t.integer "quantity", default: 0, null: false
    t.decimal "buy_price", precision: 8, scale: 2, default: "0.0", null: false
    t.boolean "is_new", default: false, null: false
    t.string "description"
    t.index ["barcode_id"], name: "index_products_on_barcode_id"
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "city", default: "", null: false
    t.string "address", default: "", null: false
    t.string "phone", default: "", null: false
    t.decimal "money", precision: 8, scale: 2, default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "shop_id", null: false
    t.index ["user_id", "shop_id"], name: "index_shops_users_on_user_id_and_shop_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "shop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_transactions_on_shop_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", default: "t", null: false
    t.string "last_name", default: "t", null: false
    t.string "city", default: "t", null: false
    t.string "address", default: "t", null: false
    t.string "phone", default: "t", null: false
    t.boolean "is_enabled", default: true, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "barcodes", "product_infos"
  add_foreign_key "default_prices", "product_infos"
  add_foreign_key "money_transaction_details", "transactions"
  add_foreign_key "product_transaction_details", "products"
  add_foreign_key "product_transaction_details", "transactions"
  add_foreign_key "products", "barcodes"
  add_foreign_key "products", "shops"
  add_foreign_key "transactions", "shops"
  add_foreign_key "transactions", "users"
end
