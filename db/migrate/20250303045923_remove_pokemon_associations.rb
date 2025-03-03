class RemovePokemonAssociations < ActiveRecord::Migration[8.0]
  def change
    change_table :pokemons do |t|
      t.remove_references :species
      t.remove_references :type
      t.remove_references :ability
  end
end

class AddPokemonAssociations < ActiveRecord::Migration[8.0]
  def change
    change_table :pokemons do |t|
      t.has_one :species
      t.has_many :type
      t.has_many :ability
  end
end

class AddTypeAssociation < ActiveRecord::Migration[8.0]
  def change
    change_table :types do |t|
      t.belongs_to :pokemon
  end
end

class AddAbilityAssociation < ActiveRecord::Migration[8.0]
  def change
    change_table :abilities do |t|
      t.belongs_to :pokemon
  end
end

class AddASpeciesAssociation < ActiveRecord::Migration[8.0]
  def change
    change_table :species do |t|
      t.belongs_to :pokemon
  end
end