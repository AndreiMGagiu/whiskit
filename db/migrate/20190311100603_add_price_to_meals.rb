class AddPriceToMeals < ActiveRecord::Migration[5.2]
  def change
    add_monetize :meals, :price, currency: { present: false }
  end
end
