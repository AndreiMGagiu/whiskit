class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :meal_dietary_requirements
  has_many :dietary_requirements, through: :meal_dietary_requirements
end
