class MealDietaryRequirement < ApplicationRecord
  belongs_to :dietary_requirements
  belongs_to :meal

end
