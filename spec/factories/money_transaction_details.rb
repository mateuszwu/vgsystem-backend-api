FactoryBot.define do
  factory :money_transaction_detail do
    transaction_id { create(:transaction).id }
    category 'withdraw'
    quantity 100
  end
end
