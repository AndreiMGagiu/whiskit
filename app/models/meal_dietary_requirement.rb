class MealDietaryRequirement < ApplicationRecord
  belongs_to :dietary_requirement
  belongs_to :meal
end
