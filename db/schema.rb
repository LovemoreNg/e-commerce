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

ActiveRecord::Schema.define(version: 20171227124452) do

  create_table "customers", primary_key: "customer_id", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.boolean  "voided",     limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "items", primary_key: "item_id", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "price",      limit: 255
    t.boolean  "voided",     limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "order_details", primary_key: "details_id", force: :cascade do |t|
    t.integer  "item_id",    limit: 4
    t.integer  "order_id",   limit: 4
    t.integer  "quantity",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "orders", primary_key: "order_id", force: :cascade do |t|
    t.integer  "customer_id", limit: 4,                 null: false
    t.datetime "order_date",                            null: false
    t.boolean  "voided",      limit: 1, default: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
