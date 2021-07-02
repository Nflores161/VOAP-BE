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

ActiveRecord::Schema.define(version: 2021_07_01_131054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_images", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.string "genre"
    t.string "art_type"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "art_types", force: :cascade do |t|
    t.string "contemporary"
    t.string "modern"
    t.string "abstract"
    t.string "cubism"
    t.string "post_modern"
    t.string "punk_style"
    t.string "extreme"
    t.string "sketchy"
    t.string "geometric"
    t.string "photography"
    t.string "pop_art"
    t.string "realism"
    t.string "surrealism"
    t.string "impressionism"
    t.string "collage"
    t.string "freestyle"
    t.string "symbolism"
    t.string "expressionism"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forums", force: :cascade do |t|
    t.string "post"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "punk"
    t.string "d_beat"
    t.string "egg_punk"
    t.string "chain_punk"
    t.string "heavy_metal"
    t.string "war_metal"
    t.string "death_metal"
    t.string "metal"
    t.string "electronic"
    t.string "indie"
    t.string "pop"
    t.string "synth_pop"
    t.string "goth"
    t.string "industrial"
    t.string "post_punk"
    t.string "shoegaze"
    t.string "pop_punk"
    t.string "hip_hop"
    t.string "techno"
    t.string "ebm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "location"
    t.string "bio"
    t.string "forum_post"
    t.boolean "creator"
    t.string "profile_pic_url"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
