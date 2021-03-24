require 'ffaker'

Customer.delete_all

puts 'Inserting customers...'

10.times do
  Customer.create!(email: FFaker::Internet.email, name: FFaker::Name.name)
end
