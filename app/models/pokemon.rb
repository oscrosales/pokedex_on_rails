class Pokemon < ApplicationRecord
  belongs_to :species
  belongs_to :type
  belongs_to :ability
end
