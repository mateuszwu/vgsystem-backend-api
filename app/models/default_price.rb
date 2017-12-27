class DefaultPrice < ApplicationRecord
  belongs_to :product_info

  validates :buy_price_used_en, :buy_price_used_pl, :sell_price_used_en,
            :sell_price_used_pl, :buy_price_new_en, :buy_price_new_pl, numericality: { greater_than: 0 }
end
