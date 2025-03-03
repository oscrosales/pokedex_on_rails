class Type < ApplicationRecord
  belongs_to :pokemon

  validates :name, presence: true
  validates :name, uniqueness: true
end
