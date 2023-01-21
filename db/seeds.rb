# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


# Create fake users
5.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

# Clear the existing data
Boat.destroy_all


# Create fake boats
50.times do
  Boat.create(
    name: Faker::Creature::Cat.name,
    price: Faker::Commerce.price,
    location: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    user: User.all.sample
  )
end
