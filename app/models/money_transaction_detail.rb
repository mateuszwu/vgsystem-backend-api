class MoneyTransactionDetail < ApplicationRecord
  has_one :core_transaction, class_name: 'Transaciton'
end
