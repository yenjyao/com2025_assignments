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

ActiveRecord::Schema.define(version: 2019_12_14_181456) do

  create_table "ogsongs", force: :cascade do |t|
    t.string "title", null: false
    t.string "artist", null: false
    t.text "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_ogsongs_on_title", unique: true
  end

  create_table "ogsongs_producers", id: false, force: :cascade do |t|
    t.integer "ogsong_id", null: false
    t.integer "producer_id", null: false
    t.index ["ogsong_id"], name: "index_ogsongs_producers_on_ogsong_id"
    t.index ["producer_id"], name: "index_ogsongs_producers_on_producer_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_producers_on_name", unique: true
  end

  create_table "producers_samples", id: false, force: :cascade do |t|
    t.integer "sample_id", null: false
    t.integer "producer_id", null: false
    t.index ["producer_id"], name: "index_producers_samples_on_producer_id"
    t.index ["sample_id"], name: "index_producers_samples_on_sample_id"
  end

  create_table "samples", force: :cascade do |t|
    t.integer "ogsong_id", null: false
    t.string "title", null: false
    t.string "artist", null: false
    t.text "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ogsong_id"], name: "index_samples_on_ogsong_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
