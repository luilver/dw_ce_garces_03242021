require 'ffaker'

FactoryBot.define do
  factory :customer, class: 'Customer' do
    email { FFaker::Internet.email }
    name { FFaker::Name.name }
  end
end
