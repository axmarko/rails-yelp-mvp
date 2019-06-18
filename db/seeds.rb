puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 10 restaurants'

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end

puts 'Finished!'
