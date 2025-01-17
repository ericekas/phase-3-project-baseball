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

ActiveRecord::Schema.define(version: 2022_07_15_140438) do

  create_table "games", force: :cascade do |t|
    t.string "game_id"
    t.integer "home_team_id"
    t.string "home_team_abbrev"
    t.string "home_team_short"
    t.string "home_team_full"
    t.integer "away_team_id"
    t.string "away_team_abbrev"
    t.string "away_team_short"
    t.string "away_team_full"
    t.string "game_day"
    t.datetime "game_date"
    t.datetime "game_time_local"
    t.integer "home_score"
    t.integer "away_score"
  end

  create_table "players", force: :cascade do |t|
    t.string "name_first_last"
    t.string "name_last_first"
    t.integer "team_id"
    t.integer "static_player_id"
    t.integer "jersey_number"
    t.integer "height_feet"
    t.integer "height_inches"
    t.string "throws"
    t.string "bats"
    t.string "primary_position"
    t.string "position_desig"
    t.integer "weight"
  end

  create_table "teams", force: :cascade do |t|
    t.string "full_name"
    t.string "team_code"
    t.string "city_name"
    t.string "name_short"
    t.string "league"
    t.string "division"
    t.string "division_full"
    t.string "venue_name"
    t.string "state"
    t.integer "static_team_id"
  end

end
