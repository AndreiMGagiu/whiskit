class MealDietaryRequirement < ApplicationRecord
  belongs_to :dietary_requirement, dependent: :destroy
  belongs_to :meal
end
