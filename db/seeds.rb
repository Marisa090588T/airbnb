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

puts 'Creating 3 default accommodations ...'

accommodation1 = Accommodation.create!(
  name: "accommodation_one",
  description: "this is description",
  location: "location 11111",
  available: true,
  property_type: "family type",
  price: rand(100),
  user_id: 1)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603436961/p2x4jmgnsuhsx8doqt6f.jpg')
accommodation1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation1.save!

accommodation2 = Accommodation.create!(
  name: "accommodation_two",
  description: "this is description",
  location: "location 22222",
  available: true,
  property_type: "single type",
  price: rand(100),
  user_id: 1)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603437590/seiva76ulf4wupxvyjmh.jpg')
accommodation2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation2.save!

accommodation3 = Accommodation.create!(
  name: "accommodation_three",
  description: "this is description",
  location: "location 33333",
  available: true,
  property_type: "friend type",
  price: rand(100),
  user_id: 1)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603437650/zurgmnwiczuqqyc4oq7g.jpg')
accommodation3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation3.save!

puts 'Accommodations created!'