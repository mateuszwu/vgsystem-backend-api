FactoryBot.define do
  factory :transaction do
    user { create(:user) }
    shop { create(:shop) }
  end
end
