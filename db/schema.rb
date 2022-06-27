# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_27_163127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "league_races", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "race_track_id", null: false
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_league_races_on_league_id"
    t.index ["race_track_id"], name: "index_league_races_on_race_track_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "score_system_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["score_system_id"], name: "index_leagues_on_score_system_id"
  end

  create_table "points_for_positions", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "points"
    t.bigint "score_system_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["score_system_id"], name: "index_points_for_positions_on_score_system_id"
  end

  create_table "race_tracks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "score_systems", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "league_races", "leagues"
  add_foreign_key "league_races", "race_tracks"
  add_foreign_key "leagues", "score_systems"
  add_foreign_key "points_for_positions", "score_systems"
end
