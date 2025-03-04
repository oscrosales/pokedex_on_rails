class RemovePokemonFromTypes < ActiveRecord::Migration[8.0]
  def change
    remove_reference :types, :pokemon, null: false
  end
end
