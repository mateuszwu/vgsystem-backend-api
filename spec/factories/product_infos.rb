FactoryBot.define do
  factory :product_info do
    name_en { Faker::Book.title }
    name_pl { Faker::Book.title }
    category 'PS4'
  end
end
