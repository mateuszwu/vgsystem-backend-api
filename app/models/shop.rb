class Shop < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :transactions

  validates :city, :address, :phone, presence: true
  validates :money, numericality: { greater_than: 0 }
end
