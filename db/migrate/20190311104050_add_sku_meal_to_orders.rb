class AddSkuMealToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :meal_sku, :string
  end
end
