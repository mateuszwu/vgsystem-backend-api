class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  has_one :money_transaction_detail

  has_many :product_transaction_details
end
