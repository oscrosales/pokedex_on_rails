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

ActiveRecord::Schema[8.0].define(version: 2025_03_03_033509) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.text "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "species_id", null: false
    t.integer "type_id", null: false
    t.integer "ability_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sprite"
    t.index ["ability_id"], name: "index_pokemons_on_ability_id"
    t.index ["species_id"], name: "index_pokemons_on_species_id"
    t.index ["type_id"], name: "index_pokemons_on_type_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "flavor_text"
    t.string "genus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemons", "abilities"
  add_foreign_key "pokemons", "species"
  add_foreign_key "pokemons", "types"
end
