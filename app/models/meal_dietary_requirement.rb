class MealDietaryRequirement < ApplicationRecord
  belongs_to :dietary_requirement, dependent: :delete
  belongs_to :meal
end
