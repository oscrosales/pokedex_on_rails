class Species < ApplicationRecord
  validates :name, :flavor_text, :genus, presence: true
  validates :name, uniqueness: true
end
