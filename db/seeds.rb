# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 10 fake restaurants...'
10.times do
  new_restaurant = Restaurant.new(
    name:    Faker::Hipster.word,
    address:  "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number:  Faker::PhoneNumber.cell_phone_in_e164,
    category:  ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  new_restaurant.save!
end
puts 'Finished!'