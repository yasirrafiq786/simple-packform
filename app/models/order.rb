class Order < ApplicationRecord
  belongs_to :customer

  validates :created_at, presence: true
  validates :order_name, presence: true
end
