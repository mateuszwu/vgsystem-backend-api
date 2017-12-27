class Product < ApplicationRecord
  belongs_to :barcode
  belongs_to :shop

  has_many :product_transaction_details

  validates :quantity, numericality: { greater_than: 0, only_integer: true }
  validates :buy_price, numericality: { greater_than: 0 }
end
