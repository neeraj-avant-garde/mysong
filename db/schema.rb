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

ActiveRecord::Schema.define(version: 20131118062038) do

  create_table "host_sessions", force: true do |t|
    t.integer  "host_id",                        null: false
    t.string   "host_session_id",                null: false
    t.boolean  "is_active",       default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "host_sessions", ["host_session_id"], name: "index_host_sessions_on_host_session_id", unique: true

  create_table "host_users", force: true do |t|
    t.integer  "host_id",                        null: false
    t.integer  "user_id",                        null: false
    t.string   "activity",    default: "visit",  null: false
    t.string   "user_status", default: "active", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
    t.string   "name"
    t.string   "app_id",                           null: false
    t.string   "email",                            null: false
    t.string   "password",                         null: false
    t.string   "address"
    t.string   "area"
    t.string   "city"
    t.integer  "postcode"
    t.string   "state"
    t.string   "country"
    t.string   "verification"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "subscription_end"
    t.integer  "max_requests",     default: 5,     null: false
    t.integer  "max_queue",        default: 10,    null: false
    t.decimal  "proximity",        default: 100.0, null: false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "slogan"
    t.string   "device_id",                        null: false
    t.boolean  "is_logged_in",     default: true,  null: false
    t.string   "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hosts", ["email"], name: "index_hosts_on_email", unique: true

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
    t.string   "name",                            null: false
    t.string   "guid",                            null: false
    t.string   "phone",                           null: false
    t.string   "verification",                    null: false
    t.string   "longitude"
    t.string   "latitude"
    t.string   "privilege",    default: "normal", null: false
    t.string   "device"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["guid"], name: "index_users_on_guid", unique: true
  add_index "users", ["phone"], name: "index_users_on_phone", unique: true

end
