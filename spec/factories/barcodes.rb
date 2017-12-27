FactoryBot.define do
  factory :barcode do
    product_info { create(:product_info) }
    sequence(:code) { |n| "12345678#{n}" }
    is_english true
    is_polish true
  end
end
