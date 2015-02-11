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

ActiveRecord::Schema.define(version: 20150208062256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estacionamientos", force: :cascade do |t|
    t.integer  "number_posts"
    t.integer  "number_floors"
    t.float    "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "historials", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "enter_time"
    t.datetime "exit_time"
    t.float    "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "type"
    t.datetime "time_of_reservation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
