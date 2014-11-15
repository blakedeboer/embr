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

ActiveRecord::Schema.define(version: 20141115171802) do

  create_table "apartments", force: true do |t|
    t.string   "address"
    t.string   "room_type"
    t.string   "br_count"
    t.string   "ba_count"
    t.integer  "price"
    t.integer  "hood_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "apt_img"
  end

  create_table "dislikes", force: true do |t|
    t.integer "disliker_id"
    t.integer "dislikee_id"
  end

  create_table "hoods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "liker_id"
    t.integer  "likee_id"
  end

  create_table "matches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socials", force: true do |t|
    t.string   "fb"
    t.string   "t"
    t.string   "li"
    t.string   "ig"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.string   "orientation"
    t.string   "looking_for"
    t.string   "prof_img"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "apt_img"
    t.integer  "budget"
  end

end
