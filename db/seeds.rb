# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  Flat.create!(
    name: Faker::Ancient.hero,
    address: Faker::Address.full_address,
    description: Faker::GameOfThrones.quote,
    price_per_night: (50..100).to_a.sample,
    number_of_guests: [1, 2, 3, 4].sample
  )
end
