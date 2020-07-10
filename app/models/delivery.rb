class Delivery < ApplicationRecord
  belongs_to :order_item

  validates :delivered_quantity, presence: true
end
