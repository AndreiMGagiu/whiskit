class AddPickUpLocationToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :pick_up_location, :string
  end
end
