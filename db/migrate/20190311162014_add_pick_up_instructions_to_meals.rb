class AddPickUpInstructionsToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :pick_up_instructions, :string
  end
end
