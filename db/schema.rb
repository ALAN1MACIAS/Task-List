# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_26_193603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sharestorages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "taskstorage_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taskstorage_id"], name: "index_sharestorages_on_taskstorage_id"
    t.index ["user_id"], name: "index_sharestorages_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "lavel_importance"
    t.string "status"
    t.date "end_date"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "taskstorage_id", null: false
    t.index ["taskstorage_id"], name: "index_tasks_on_taskstorage_id"
  end

  create_table "taskstorages", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "sub_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_taskstorages_on_user_id"
  end

  create_table "userconfigs", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidop"
    t.string "apellidom"
    t.text "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_userconfigs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "sharestorages", "taskstorages"
  add_foreign_key "sharestorages", "users"
  add_foreign_key "tasks", "taskstorages"
  add_foreign_key "taskstorages", "users"
  add_foreign_key "userconfigs", "users"
end
