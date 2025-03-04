class RemoveReferencesFromPokemons < ActiveRecord::Migration[8.0]
  def change
    remove_reference :pokemons, :abilities
  end
end
