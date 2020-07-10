class Customer < ApplicationRecord
  belongs_to :company

  validates :user_id, presence: true
  validates :login, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :credit_card, presence: true
end
