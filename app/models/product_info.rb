class ProductInfo < ApplicationRecord
  after_create :create_default_prices

  has_one :default_price
  has_many :barcodes

  validates :name_en, :name_pl, :category, presence: true

  private

  def create_default_prices
    DefaultPrice.create(product_info: self)
  end
end
