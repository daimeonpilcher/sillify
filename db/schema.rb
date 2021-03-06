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

ActiveRecord::Schema.define(version: 20150729061012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blanks", force: :cascade do |t|
    t.string   "old_word"
    t.string   "type"
    t.string   "new_word"
    t.integer  "story_id"
    t.integer  "sillified_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "blanks", ["sillified_id"], name: "index_blanks_on_sillified_id", using: :btree
  add_index "blanks", ["story_id"], name: "index_blanks_on_story_id", using: :btree

  create_table "sillifieds", force: :cascade do |t|
    t.string   "title"
    t.text     "html"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "sillifieds", ["user_id"], name: "index_sillifieds_on_user_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.text     "html"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stories", ["user_id"], name: "index_stories_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "blanks", "sillifieds"
  add_foreign_key "blanks", "stories"
  add_foreign_key "sillifieds", "users"
  add_foreign_key "stories", "users"
end
