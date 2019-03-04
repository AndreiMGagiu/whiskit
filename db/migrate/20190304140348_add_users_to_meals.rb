class AddUsersToMeals < ActiveRecord::Migration[5.2]
  def change
    add_reference(:meals, :user, index: true)
  end
end
