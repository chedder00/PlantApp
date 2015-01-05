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

ActiveRecord::Schema.define(version: 20150105000625) do

  create_table "notes", force: true do |t|
    t.date     "date"
    t.text     "comment"
    t.integer  "plant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["plant_id"], name: "index_notes_on_plant_id"

  create_table "plant_monitors", force: true do |t|
    t.date     "date"
    t.string   "plant_height"
    t.string   "water_ph"
    t.string   "tds_reading"
    t.text     "comment"
    t.integer  "plant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plant_monitors", ["plant_id"], name: "index_plant_monitors_on_plant_id"

  create_table "plants", force: true do |t|
    t.string   "strain"
    t.string   "serial_number"
    t.boolean  "clone"
    t.boolean  "harvested"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
