class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  belongs_to :money_transaction
end
