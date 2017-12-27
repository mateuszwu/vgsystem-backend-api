class Product < ApplicationRecord
  belongs_to :barcode
  belongs_to :shop

  has_many :product_transaction_details
end
