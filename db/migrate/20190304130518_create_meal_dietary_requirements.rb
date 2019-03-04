class CreateMealDietaryRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_dietary_requirements do |t|
      t.references :dietary_requirements, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
