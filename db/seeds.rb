# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Flat.destroy_all
10.times do
  element = {
    name: Faker::WorldOfWarcraft.hero,
    address: Faker::Address.full_address,
    description: Faker::Community.quotes,
    price_per_night: rand(50..150),
    number_of_guests: rand(1..8),
    image: Faker::LoremPixel.image
  }
  Flat.create!(element)
end
puts "#{Flat.all.count()}"
puts "Done!"
