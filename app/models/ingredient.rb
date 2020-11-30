class Ingredient < ApplicationRecord
  has_many :doses, inverse_of: :ingredient

  validates :name, presence: true, uniqueness: true
end
