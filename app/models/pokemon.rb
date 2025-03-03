class Pokemon < ApplicationRecord
  belongs_to :species
  belongs_to :type
  belongs_to :ability

  validates :name, :height, :weight, :hp, :attack, :defense, :spatk, :spdef, :speed, presence: true
  validates :height, :weight, :hp, :attack, :defense, :spatk, :spdef, :speed, numericality: { only_integer: true }
  validates :name, uniqueness: true
end
