FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "joe_doe_#{n}@example.com" }
    password 'Passw0rd123'
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    phone '555-333-222'
  end
end
