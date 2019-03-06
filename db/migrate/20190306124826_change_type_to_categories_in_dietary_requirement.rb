class ChangeTypeToCategoriesInDietaryRequirement < ActiveRecord::Migration[5.2]
  def change
    rename_column :dietary_requirements, :type, :categories
  end
end
