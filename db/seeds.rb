# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating a flat..."

6.times do
  flat = Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: 99,
    number_of_guests: 3
    )

puts "Flat with id: #{flat.id} has been created"
end

puts "Finished!"
