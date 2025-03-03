class Ability < ApplicationRecord
  validates :name, :effect, presence: true
  validates :name, uniqueness: true
end
