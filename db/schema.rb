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

ActiveRecord::Schema.define(version: 2020_03_02_174928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "series_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["series_id"], name: "index_comments_on_series_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.text "description"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_lists_on_users_id"
  end

  create_table "lists_series", id: false, force: :cascade do |t|
    t.bigint "serie_id", null: false
    t.bigint "list_id", null: false
    t.index ["list_id", "serie_id"], name: "index_lists_series_on_list_id_and_serie_id"
    t.index ["serie_id", "list_id"], name: "index_lists_series_on_serie_id_and_list_id"
  end

  create_table "scores", force: :cascade do |t|
    t.float "score"
    t.bigint "users_id"
    t.bigint "series_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["series_id"], name: "index_scores_on_series_id"
    t.index ["users_id"], name: "index_scores_on_users_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.boolean "status"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "comment_id"
    t.index ["comment_id"], name: "index_series_on_comment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.integer "name"
    t.string "img"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "series", column: "series_id"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "lists", "users", column: "users_id"
  add_foreign_key "scores", "series", column: "series_id"
  add_foreign_key "scores", "users", column: "users_id"
  add_foreign_key "series", "comments"
end
