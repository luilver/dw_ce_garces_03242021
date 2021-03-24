require 'ffaker'

FactoryBot.define do
  factory :order, class: 'Order' do
    association :customer

    sku { "#{FFaker::Lorem.word[0...3]}#{Random.rand 1000}" }
    total { Random.rand * 1000 }
  end
end
