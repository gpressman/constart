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

ActiveRecord::Schema.define(version: 20150226193736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concerts", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "artist"
    t.integer  "venue_id"
    t.date     "date"
    t.string   "ticket_price"
    t.integer  "tickets_required"
    t.date     "date_campaign_ends"
    t.integer  "user_id"
    t.text     "description"
    t.string   "city"
  end

  create_table "concerts_and_users", force: :cascade do |t|
    t.integer "users_id"
    t.integer "concerts_id"
  end

  add_index "concerts_and_users", ["concerts_id"], name: "index_concerts_and_users_on_concerts_id", using: :btree
  add_index "concerts_and_users", ["users_id"], name: "index_concerts_and_users_on_users_id", using: :btree

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "artist"
    t.integer  "venue_id"
    t.date     "date"
    t.string   "ticket_price"
    t.integer  "tickets_required"
    t.date     "date_campaign_ends"
    t.integer  "user_id"
    t.string   "status"
    t.string   "city"
    t.text     "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "birthday"
    t.text     "address"
    t.string   "phone_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "manager_name"
    t.string   "phone_number"
    t.text     "address"
    t.string   "email"
    t.integer  "capacity"
    t.boolean  "adult"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "city"
  end

end
