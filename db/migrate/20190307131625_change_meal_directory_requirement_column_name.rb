class ChangeMealDirectoryRequirementColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :meal_dietary_requirements, :dietary_requirements_id, :dietary_requirement_id
  end
end
