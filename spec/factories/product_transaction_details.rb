FactoryBot.define do
  factory :product_transaction_detail do
    transaction_id { create(:transaction).id }
    product { create(:product) }
    quantity 1
    category 'sell'
    sell_price 10
  end
end
