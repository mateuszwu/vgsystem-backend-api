class Barcode < ApplicationRecord
  belongs_to :product_info

  has_many :product

  validates :code, uniqueness: true
end
