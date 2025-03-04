class AddPokemonToSpecies < ActiveRecord::Migration[8.0]
  def change
    add_reference :species, :pokemon, null: false, foreign_key: true
  end
end
