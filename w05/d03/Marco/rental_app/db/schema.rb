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

ActiveRecord::Schema.define(version: 20140213043806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: true do |t|
    t.string "name", limit: 100
  end

  create_table "clowns", force: true do |t|
    t.string  "name",           limit: 50
    t.integer "happiness_lvl"
    t.integer "creepiness_lvl",             default: 100
    t.string  "talent",         limit: 100
    t.boolean "is_singer"
  end

  create_table "connections", force: true do |t|
    t.string  "city"
    t.string  "name"
    t.integer "level"
    t.string  "path"
    t.string  "state"
  end

  create_table "musicals", force: true do |t|
    t.string  "title",    limit: 50
    t.string  "composer", limit: 50
    t.string  "lyricist", limit: 50
    t.integer "year"
  end

  create_table "performances", force: true do |t|
    t.integer "song_id"
    t.integer "character_id"
  end

  create_table "songs", force: true do |t|
    t.string  "title",      limit: 100
    t.integer "musical_id"
  end

end
