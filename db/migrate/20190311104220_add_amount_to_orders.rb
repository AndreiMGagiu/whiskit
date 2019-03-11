class AddAmountToOrders < ActiveRecord::Migration[5.2]
  def change
    add_monetize :orders, :amount
    add_column :orders, :payment, :jsonb
    t.monetize :amount, currency: { present: false }
  end
end
