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

ActiveRecord::Schema.define(version: 20150228153458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auctions", force: true do |t|
    t.string   "name"
    t.integer  "number_participants"
    t.datetime "start"
    t.integer  "event_id"
    t.integer  "soft_cap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entrants", force: true do |t|
    t.string   "name"
    t.integer  "order"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seed"
  end

  add_index "entrants", ["event_id"], name: "index_entrants_on_event_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "sport"
    t.string   "league"
    t.date     "start_date"
    t.datetime "cutoff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.string   "name"
    t.integer  "event_id"
    t.integer  "order"
    t.float    "payout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rounds", ["event_id"], name: "index_rounds_on_event_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
