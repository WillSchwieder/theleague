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

ActiveRecord::Schema.define(version: 2022_03_08_204246) do

  create_table "fantasy_teams", force: :cascade do |t|
    t.string "name"
    t.integer "team_type_id"
    t.integer "league_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "fantasypoints", force: :cascade do |t|
    t.integer "passing_yrd"
    t.integer "passing_td"
    t.integer "int"
    t.integer "passing_att"
    t.integer "comp"
    t.integer "rushing_att"
    t.integer "rushing_yrd"
    t.integer "rushing_td"
    t.integer "rec"
    t.integer "targets"
    t.integer "receiving_yrds"
    t.integer "fumble"
    t.float "ppr_fantasy_points"
    t.float "standard_fantasy_pts"
    t.float "half_ppr_fantasy_pts"
    t.integer "player_id"
    t.integer "team_id"
    t.integer "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.string "week"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "league_schedules", force: :cascade do |t|
    t.integer "home_fantasy_team_id"
    t.integer "away_fantasy_team_id"
    t.integer "week"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.integer "league_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "image"
  end

  create_table "leaguetypes", force: :cascade do |t|
    t.string "league_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "positionid"
    t.string "playerhash"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position_id"
    t.integer "team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "short_name"
  end

  create_table "team_rosters", force: :cascade do |t|
    t.integer "fantasy_team_id"
    t.integer "player_id"
    t.string "add_date"
    t.string "status"
    t.string "drop_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fantasy_position"
  end

  create_table "team_types", force: :cascade do |t|
    t.string "specialpower"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.string "image"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "mascot"
    t.string "name_abbr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
