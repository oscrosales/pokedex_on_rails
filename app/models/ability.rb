class Ability < ApplicationRecord
  belongs_to :pokemon

  validates :name, :effect, presence: true
  validates :name, uniqueness: true
end
