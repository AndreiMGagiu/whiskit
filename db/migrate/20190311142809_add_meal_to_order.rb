class AddMealToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :meal_id, :integer
  end
end
