class MoneyTransactionDetail < ApplicationRecord
  has_one :core_transaction, class_name: 'Transaciton'

  validates :type, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
