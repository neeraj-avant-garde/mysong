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

ActiveRecord::Schema.define(version: 20131111134916) do

  create_table "host_users", force: true do |t|
    t.integer  "host_id"
    t.integer  "user_id"
    t.string   "activity",   default: "visit", null: false
    t.boolean  "old_visit",  default: false,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
    t.string   "guid",             null: false
    t.string   "email",            null: false
    t.string   "password",         null: false
    t.string   "address",          null: false
    t.string   "area"
    t.string   "city",             null: false
    t.string   "verification"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "subscription_end"
    t.integer  "max_requests",     null: false
    t.integer  "max_queue",        null: false
    t.decimal  "proximity",        null: false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "slogan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hosts", ["email"], name: "index_hosts_on_email", unique: true
  add_index "hosts", ["guid"], name: "index_hosts_on_guid", unique: true

  create_table "messages", force: true do |t|
    t.integer  "host_id"
    t.integer  "user_id"
    t.string   "text",                        null: false
    t.string   "created_by", default: "host", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlist_songs", force: true do |t|
    t.integer  "playlist_id"
    t.integer  "song_id"
    t.integer  "rank",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists", force: true do |t|
    t.integer  "host_id"
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_queue_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "song_queue_id"
    t.boolean  "like",          default: false
    t.boolean  "dislike",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_queues", force: true do |t|
    t.integer  "host_id"
    t.integer  "user_id"
    t.integer  "song_id"
    t.string   "message"
    t.boolean  "message_approved", default: true
    t.string   "priority",         default: "normal",  null: false
    t.string   "status",           default: "waiting", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.integer  "host_id"
    t.string   "title",                   null: false
    t.string   "artist"
    t.string   "album"
    t.integer  "length",     default: 60, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "guid",                            null: false
    t.string   "phone",                           null: false
    t.string   "verification",                    null: false
    t.string   "longitude"
    t.string   "latitude"
    t.string   "privilege",    default: "normal", null: false
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["guid"], name: "index_users_on_guid", unique: true
  add_index "users", ["phone"], name: "index_users_on_phone", unique: true

end
