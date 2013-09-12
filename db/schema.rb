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

ActiveRecord::Schema.define(version: 20130912144207) do

  create_table "members", force: true do |t|
    t.integer  "syndicate_id"
    t.float    "ownership_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "syndicates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "syndicate_id"
    t.string   "available"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "wins"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "password_digest"
  end

end
