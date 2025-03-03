class AddSpriteToPokemons < ActiveRecord::Migration[8.0]
  def change
    add_column :pokemons, :sprite, :string
  end
end
