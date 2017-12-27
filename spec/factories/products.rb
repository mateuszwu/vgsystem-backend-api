FactoryBot.define do
  factory :product do
    barcode { create(:barcode) }
    shop { create(:shop) }
    quantity 5
    buy_price 30
    is_new false
  end
end
