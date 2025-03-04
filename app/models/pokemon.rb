class Pokemon < ApplicationRecord
  validates :name, :height, :weight, :hp, :attack, :defense, :spatk, :spdef, :speed, presence: true
  validates :height, :weight, :hp, :attack, :defense, :spatk, :spdef, :speed, numericality: { only_integer: true }
  validates :name, uniqueness: true
end
