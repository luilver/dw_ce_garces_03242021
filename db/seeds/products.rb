require 'ffaker'

Product.delete_all

puts 'Inserting products...'

10.times do
  sku = "#{FFaker::Lorem.word[0...3]}#{Random.rand 1000}" 
  name = FFaker::Name.name
  description = FFaker::Lorem.paragraph
  quantity = Random.rand 100
  Product.create!(name: name, description: description, sku: sku)
end
