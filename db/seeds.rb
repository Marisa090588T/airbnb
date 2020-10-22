# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning data..."

User.destroy_all

puts "User data destroyed!"

Accommodation.destroy_all

puts "Accommodation data destroyed!"

puts 'Creating 1 default user...'

default_user = User.new(
  first_name: "firstname",
  last_name: "lastname",
  user_name: "user1",
  email: "user@user.com",
  password: "password"
)

default_user.save!

puts 'User created!'

puts 'Creating 10 default accommodations ...'

12.times do |n|
  Accommodation.create!(name: "accommodation#{n+1}",
               description: "this is description",
               location: "location 12345",
               available: true,
               property_type: "family type",
               price: rand(100),
               user_id: 1)
end

puts 'Accommodations created!'
