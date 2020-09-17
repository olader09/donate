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

ActiveRecord::Schema.define(version: 2020_09_17_181046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.integer "donation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar", default: ""
  end

  create_table "donations", force: :cascade do |t|
    t.string "name"
    t.integer "sum", default: 0, null: false
    t.integer "progress", default: 0, null: false
    t.string "aim"
    t.string "description"
    t.string "author"
    t.string "type_of"
    t.string "date_close"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "picture"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "name", default: ""
    t.string "description", default: ""
    t.string "picture", default: ""
    t.jsonb "timecodes", default: {}
    t.string "audio", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
