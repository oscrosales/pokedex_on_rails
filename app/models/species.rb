class Species < ApplicationRecord
  belongs_to :pokemon

  validates :name, :flavor_text, :genus, presence: true
  validates :name, uniqueness: true
end
