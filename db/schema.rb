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

ActiveRecord::Schema.define(version: 2020_04_21_013607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.bigint "celebrity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["celebrity_id"], name: "index_addresses_on_celebrity_id"
  end

  create_table "beverages", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_alcoholic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "publisher"
    t.date "dat_published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "celebrities", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.float "calories"
    t.boolean "has"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.decimal "salary"
    t.boolean "is_full_time"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "major"
    t.integer "gpa"
  end

  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "celebrities"
end
