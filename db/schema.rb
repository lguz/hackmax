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

ActiveRecord::Schema.define(version: 20150207175417) do

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "genero"
    t.string   "language"
    t.string   "duration"
    t.string   "summary"
    t.string   "classification"
    t.string   "subtitle"
    t.string   "ext"
    t.date     "release_data"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer  "seat_id"
    t.integer  "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "theater_id"
  end

  add_index "seats", ["theater_id"], name: "index_seats_on_theater_id"

  create_table "shows", force: :cascade do |t|
    t.time     "time_show"
    t.date     "date_show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "movie_id"
    t.integer  "theater_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
  end

end
