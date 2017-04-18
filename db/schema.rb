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

ActiveRecord::Schema.define(version: 20170418150920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arenas", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "event"
    t.string "image"
    t.string "intro"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_arenas_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "location"
    t.string "image"
    t.string "fighter"
    t.float "time"
    t.string "winner"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "events_robots", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "robot_id", null: false
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "skill"
    t.string "demo"
    t.string "improvement"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_robots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "photo"
    t.string "firstname"
    t.string "lastname"
    t.string "motto"
    t.string "skill"
    t.integer "victory"
    t.integer "lose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "arenas", "users"
  add_foreign_key "events", "users"
  add_foreign_key "robots", "users"
end
