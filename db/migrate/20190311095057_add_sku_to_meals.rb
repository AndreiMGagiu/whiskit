class AddSkuToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :sku, :string
  end
end
