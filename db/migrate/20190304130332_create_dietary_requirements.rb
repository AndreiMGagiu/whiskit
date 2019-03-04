class CreateDietaryRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :dietary_requirements do |t|
      t.string :type

      t.timestamps
    end
  end
end
