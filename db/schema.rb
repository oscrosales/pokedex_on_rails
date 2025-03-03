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

ActiveRecord::Schema[8.0].define(version: 2025_03_03_050701) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.text "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pokemon_id"
    t.index ["pokemon_id"], name: "index_abilities_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "spatk"
    t.integer "spdef"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sprite"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "flavor_text"
    t.string "genus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pokemon_id"
    t.index ["pokemon_id"], name: "index_species_on_pokemon_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pokemon_id"
    t.index ["pokemon_id"], name: "index_types_on_pokemon_id"
  end
end
