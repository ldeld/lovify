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

ActiveRecord::Schema.define(version: 20171212111920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_genres", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_genres_on_artist_id", using: :btree
    t.index ["genre_id"], name: "index_artist_genres_on_genre_id", using: :btree
  end

  create_table "artist_listen_in_commons", force: :cascade do |t|
    t.integer  "artist_listen_user_1_id"
    t.integer  "artist_listen_user_2_id"
    t.integer  "match_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["artist_listen_user_1_id"], name: "index_artist_listen_in_commons_on_artist_listen_user_1_id", using: :btree
    t.index ["artist_listen_user_2_id"], name: "index_artist_listen_in_commons_on_artist_listen_user_2_id", using: :btree
    t.index ["match_id"], name: "index_artist_listen_in_commons_on_match_id", using: :btree
  end

  create_table "artist_listens", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "artist_id"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_listens_on_artist_id", using: :btree
    t.index ["user_id"], name: "index_artist_listens_on_user_id", using: :btree
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "spotify_id"
  end

  create_table "bar_genres", force: :cascade do |t|
    t.integer  "bar_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_bar_genres_on_bar_id", using: :btree
    t.index ["genre_id"], name: "index_bar_genres_on_genre_id", using: :btree
  end

  create_table "bars", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_bars", force: :cascade do |t|
    t.integer  "bar_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_match_bars_on_bar_id", using: :btree
    t.index ["match_id"], name: "index_match_bars_on_match_id", using: :btree
  end

  create_table "match_genres", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_match_genres_on_genre_id", using: :btree
    t.index ["match_id"], name: "index_match_genres_on_match_id", using: :btree
  end

  create_table "matches", force: :cascade do |t|
    t.float    "score"
    t.integer  "user_1_id"
    t.integer  "user_2_id"
    t.integer  "asker"
    t.integer  "receiver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "hide"
    t.index ["user_1_id"], name: "index_matches_on_user_1_id", using: :btree
    t.index ["user_2_id"], name: "index_matches_on_user_2_id", using: :btree
  end

  create_table "rdvs", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_rdvs_on_bar_id", using: :btree
    t.index ["match_id"], name: "index_rdvs_on_match_id", using: :btree
  end

  create_table "track_listen_in_commons", force: :cascade do |t|
    t.integer  "track_listen_user_1_id"
    t.integer  "track_listen_user_2_id"
    t.integer  "match_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["match_id"], name: "index_track_listen_in_commons_on_match_id", using: :btree
    t.index ["track_listen_user_1_id"], name: "index_track_listen_in_commons_on_track_listen_user_1_id", using: :btree
    t.index ["track_listen_user_2_id"], name: "index_track_listen_in_commons_on_track_listen_user_2_id", using: :btree
  end

  create_table "track_listens", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "track_id"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_track_listens_on_track_id", using: :btree
    t.index ["user_id"], name: "index_track_listens_on_user_id", using: :btree
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.integer  "popularity"
    t.string   "album"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "spotify_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "address"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "gender"
    t.string   "photo"
    t.string   "spotify_auth"
    t.string   "spotify_photo"
    t.integer  "login_count",            default: 0
    t.string   "interested_in"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "artist_genres", "artists"
  add_foreign_key "artist_genres", "genres"
  add_foreign_key "artist_listen_in_commons", "matches"
  add_foreign_key "artist_listens", "artists"
  add_foreign_key "artist_listens", "users"
  add_foreign_key "bar_genres", "bars"
  add_foreign_key "bar_genres", "genres"
  add_foreign_key "match_bars", "bars"
  add_foreign_key "match_bars", "matches"
  add_foreign_key "match_genres", "genres"
  add_foreign_key "match_genres", "matches"
  add_foreign_key "rdvs", "bars"
  add_foreign_key "rdvs", "matches"
  add_foreign_key "track_listen_in_commons", "matches"
  add_foreign_key "track_listens", "tracks"
  add_foreign_key "track_listens", "users"
end
