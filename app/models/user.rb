class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :shops
  has_many :transactions

  validates :first_name, :last_name, :city, :address, :phone, presence: true
end
