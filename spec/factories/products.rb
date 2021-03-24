FactoryBot.define do
  factory :product, class: 'Product' do
    sku { "#{FFaker::Lorem.word[0...3]}#{Random.rand 1000}" }
    name { FFaker::Name.name }
    description { FFaker::Lorem.paragraph }
  end
end
