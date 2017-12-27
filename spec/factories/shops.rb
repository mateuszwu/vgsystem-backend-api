FactoryBot.define do
  factory :shop do
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    phone '555-333-222'
    money 100
  end
end
