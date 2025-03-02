class CreateSpecies < ActiveRecord::Migration[8.0]
  def change
    create_table :species do |t|
      t.string :name
      t.string :flavor_text
      t.string :genus

      t.timestamps
    end
  end
end
