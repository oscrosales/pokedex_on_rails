class ChangeAssociations < ActiveRecord::Migration[8.0]
  def change
    change_table :pokemons do |t|
      t.remove_references :species
      t.remove_references :type
      t.remove_references :ability

      t.has_one :species
      t.has_many :type
      t.has_many :ability
    end

    change_table :types do |t|
      t.belongs_to :pokemon
    end

    change_table :abilities do |t|
      t.belongs_to :pokemon
    end

    change_table :species do |t|
      t.belongs_to :pokemon
    end
  end
end