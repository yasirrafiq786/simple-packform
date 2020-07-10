class OrderItem < ApplicationRecord
  belongs_to :order

  validates :price_per_unit, presence: true
  validates :quantity, presence: true
  validates :product, presence: true
end
