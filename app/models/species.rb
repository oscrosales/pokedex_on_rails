class Species < ApplicationRecord
  has_one :pokemon

  validates :name, :flavor_text, :genus, presence: true
  validates :name, uniqueness: true
end
