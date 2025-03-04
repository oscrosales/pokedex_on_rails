class RemovePokemonFromAbilities < ActiveRecord::Migration[8.0]
  def change
    remove_reference :abilities, :pokemon, null: false
  end
end
