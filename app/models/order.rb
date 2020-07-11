class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :deliveries, through: :order_items
  
  validates :order_name, presence: true
  
  
  def delivered_amount
    delivered_amount = []
    self.deliveries.each do |delivery|
      delivered_amount << delivery.delivered_quantity * delivery.order_item.price_per_unit
    end
    delivered_amount.sum
  end

  def total_amount
    total_amount = []
    self.order_items.each do |order_item|
      total_amount << order_item.price_per_unit * order_item.quantity
    end
    total_amount.sum
  end
end
