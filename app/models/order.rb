class Order < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  monetize :amount_cents
end
