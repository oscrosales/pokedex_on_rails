class Pokemon < ApplicationRecord
  has_one :species

  validates :name, :height, :weight, :hp, :attack, :defense, :spatk, :spdef, :speed, :sprite, presence: true
  validates :height, :weight, :hp, :attack, :defense, :spatk, :spdef, :speed, numericality: { only_integer: true }
  validates :name, uniqueness: true
end
