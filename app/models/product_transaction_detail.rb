class ProductTransactionDetail < ApplicationRecord
  belongs_to :product

  has_one :core_transaction, class_name: 'Transaciton'

  validates :type, presence: true
  validates :sell_price, numericality: { greater_than: 0 }
  validates :quantity, numericality: { greater_than: 0, only_integer: true }
end
