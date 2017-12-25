class Product < ApplicationRecord
  belongs_to :barcodes
  belongs_to :shop

  has_many :transactions
end
