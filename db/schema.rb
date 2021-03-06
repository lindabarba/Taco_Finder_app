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

ActiveRecord::Schema.define(version: 20170427182001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "favorite_taco"
    t.string   "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image_url"
    t.integer  "comment_id"
    t.index ["comment_id"], name: "index_comments_on_comment_id", using: :btree
  end

  create_table "tacospots", force: :cascade do |t|
    t.string   "street_address"
    t.string   "city",           default: "Los Angeles"
    t.string   "state",          default: "CA"
    t.integer  "zip"
    t.string   "hours"
    t.string   "cash_only"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.string   "image_url",      default: "http://i.imgur.com/NbWIHq0.png"
    t.integer  "user_id"
    t.string   "name"
    t.index ["user_id"], name: "index_tacospots_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "comments", "comments"
  add_foreign_key "tacospots", "users"
end
