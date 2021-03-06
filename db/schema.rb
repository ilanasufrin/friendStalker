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

ActiveRecord::Schema.define(version: 20140805011332) do

  create_table "friends", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "twitter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic"
  end

  create_table "friendships", force: true do |t|
    t.integer  "friend_id"
    t.integer  "user_id"
    t.boolean  "stalking",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", force: true do |t|
    t.integer  "u_id"
    t.string   "u_phone"
    t.integer  "f_id"
    t.string   "f_update"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.float    "lat"
    t.float    "lon"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uid"
    t.string   "provider"
    t.string   "ip_address"
  end

end
