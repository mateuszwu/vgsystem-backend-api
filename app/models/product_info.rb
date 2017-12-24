class ProductInfo < ApplicationRecord
  belongs_to :default_price
  has_many :barcodes
end
