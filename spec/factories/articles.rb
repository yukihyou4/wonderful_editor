FactoryBot.define do
  factory :article do
    title { Faker::Books::CultureSeries }
    body { "MyText" }
    user
  end
end
