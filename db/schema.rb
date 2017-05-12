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

ActiveRecord::Schema.define(version: 20170501160835) do

  create_table "buycomments", force: :cascade do |t|
    t.text     "content"
    t.integer  "buy_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buys", force: :cascade do |t|
    t.string   "status"
    t.date     "date"
    t.string   "phone"
    t.string   "time"
    t.string   "location"
    t.string   "category"
    t.string   "weight"
    t.string   "price"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "tags"
    t.string   "author"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news2s", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "category"
    t.string   "tags"
    t.string   "author"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "Image"
    t.text     "indexcontent"
    t.string   "racelocation"
    t.string   "peopel"
    t.string   "month"
    t.string   "date"
    t.string   "weekdate"
    t.string   "money"
  end

  create_table "newscomments", force: :cascade do |t|
    t.text     "content"
    t.integer  "news2_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post2comments", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "post2_id"
  end

  create_table "post2s", force: :cascade do |t|
    t.text     "image"
    t.string   "indexcontent"
    t.string   "title"
    t.text     "content"
    t.string   "category"
    t.string   "tags"
    t.string   "author"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text     "image"
    t.string   "indexcontent"
    t.string   "title"
    t.text     "content"
    t.string   "category"
    t.string   "tags"
    t.string   "author"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "racecomments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "date"
    t.string   "title"
    t.string   "location"
    t.string   "people"
    t.string   "price"
    t.string   "racepeople"
    t.string   "money"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "imformation"
    t.text     "organizer"
    t.string   "category"
    t.string   "month"
    t.string   "weekdate"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "sellcomments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "sell_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sells", force: :cascade do |t|
    t.string   "phone"
    t.string   "time"
    t.string   "location"
    t.string   "category"
    t.string   "weight"
    t.string   "price"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.text     "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
