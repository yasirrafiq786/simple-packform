class OrderItem < ApplicationRecord
  belongs_to :order
  has_many :deliveries
  
  validates :price_per_unit, presence: true
  validates :quantity, presence: true
  validates :product, presence: true
end
