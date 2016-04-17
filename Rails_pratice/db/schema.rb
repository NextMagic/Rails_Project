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

ActiveRecord::Schema.define(version: 20160416092915) do

  create_table "animals", force: :cascade do |t|
    t.string "type", limit: 255
    t.string "name", limit: 255
  end

  create_table "book_owners", force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "book_id", limit: 4
    t.integer "level",   limit: 4
  end

  create_table "books", force: :cascade do |t|
    t.string  "owner_type", limit: 255
    t.integer "owner_id",   limit: 4
    t.string  "title",      limit: 255
  end

  create_table "items", force: :cascade do |t|
    t.integer "user_id", limit: 4,   null: false
    t.string  "title",   limit: 255
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", limit: 4, null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 255
  end

end
