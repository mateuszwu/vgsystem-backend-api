class ProductTransactionDetail < ApplicationRecord
  belongs_to :product

  has_one :core_transaction, class_name: 'Transaciton'
end
