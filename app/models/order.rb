class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy

  
  validates :order_name, presence: true
end
