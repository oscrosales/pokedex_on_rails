class PokemonType < ApplicationRecord
  belongs_to :pokemon
  belongs_to :type

  validates :two_types

  private

  def two_types
    if pokemon.pokemon_types.count >= 2
      errors.add(:pokemon, "can't have more than 2 types")
    end
  end
end
