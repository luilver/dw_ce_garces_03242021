require 'ffaker'

Order.delete_all

puts 'Inserting orders...'

Customer.all.each do |c|
  10.times do
    sku = "#{FFaker::Lorem.word[0...3]}#{Random.rand 1000}" 
    total = Random.rand * 1000
    c.orders << Order.create!(sku: sku, total: total, customer: c)
  end
end
