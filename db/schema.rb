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

ActiveRecord::Schema.define(version: 20150916173804) do

  create_table "connections", primary_key: "idconnections", force: :cascade do |t|
    t.string  "engineName",  limit: 3,  null: false
    t.integer "exchange",    limit: 4,  null: false
    t.string  "sessionName", limit: 45, null: false
    t.integer "ip",          limit: 8,  null: false
    t.integer "port",        limit: 4,  null: false
  end

  add_index "connections", ["engineName"], name: "toEng_idx", using: :btree
  add_index "connections", ["engineName"], name: "toEngine_idx", using: :btree
  add_index "connections", ["exchange", "sessionName", "ip", "port"], name: "connection_unique", unique: true, using: :btree
  add_index "connections", ["exchange", "sessionName", "ip", "port"], name: "idconnections_UNIQUE", unique: true, using: :btree

  create_table "engines", primary_key: "engineName", force: :cascade do |t|
    t.datetime "lastRun",             null: false
    t.binary   "bin_type", limit: 32, null: false
  end

  add_index "engines", ["engineName"], name: "engineName_UNIQUE", unique: true, using: :btree

  create_table "users", primary_key: "idusers", force: :cascade do |t|
    t.string "username", limit: 45
    t.string "password", limit: 45
  end

  create_table "usertoengines", primary_key: "idusertoengines", force: :cascade do |t|
    t.integer "idusers",    limit: 4
    t.string  "engineName", limit: 3
  end

  add_index "usertoengines", ["engineName"], name: "usertoengines_toEng_idx", using: :btree
  add_index "usertoengines", ["idusers"], name: "usertoengines_toUser_idx", using: :btree
  add_index "usertoengines", ["idusertoengines"], name: "idusertoengines_UNIQUE", unique: true, using: :btree

  add_foreign_key "connections", "engines", column: "engineName", primary_key: "engineName", name: "connToEngine"
  add_foreign_key "usertoengines", "engines", column: "engineName", primary_key: "engineName", name: "toEng", on_update: :cascade, on_delete: :nullify
  add_foreign_key "usertoengines", "users", column: "idusers", primary_key: "idusers", name: "toUser", on_update: :cascade, on_delete: :nullify
end
