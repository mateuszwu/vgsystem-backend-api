class User < ApplicationRecord
  rolify
  
  has_and_belongs_to_many :shops
  has_many :transactions

  validates :first_name, :last_name, :city, :address, :phone, presence: true
end
