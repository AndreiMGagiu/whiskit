class DietaryRequirement < ApplicationRecord
  validates :categories, presence: true
  has_many :meal_dietary_requirements
  has_many :meals, through: :meal_dietary_requirements
end
