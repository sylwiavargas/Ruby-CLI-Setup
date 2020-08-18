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

ActiveRecord::Schema.define(version: 2020_08_17_193654) do

  create_table "bucket_list_items", force: :cascade do |t|
    t.boolean "wish_completed", default: false
    t.integer "traveler_id"
    t.integer "wish_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "destination_name"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "traveler_name"
    t.integer "traveler_age"
  end

  create_table "wishes", force: :cascade do |t|
    t.string "wish_note"
    t.integer "destination_id"
  end

end

