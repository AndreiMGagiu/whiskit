class AddMealToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference(:reviews, :meal, index: true)
  end
end
