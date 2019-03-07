class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :delete_all
  has_many :meal_dietary_requirements, dependent: :delete_all
  has_many :dietary_requirements, through: :meal_dietary_requirements
  validates :name, presence: true
  validates :description, presence: true
  #   validates :portions, presence: true
  #   validates :price, presence: true
  #   validates :type_of, presence: true
  #   validates :pick_up_start, presence: true
  #   validates :pick_up_end, presence: true
end
