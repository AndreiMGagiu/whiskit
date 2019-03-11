class RemovePriceFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :meals, :price
  end
end
