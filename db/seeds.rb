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

puts 'Creating 2 default user...'

user = User.new(
  first_name: "firstname1",
  last_name: "lastname1",
  user_name: "user",
  email: "user@user.com",
  password: "password"
)

user.save!

user_2 = User.new(
  first_name: "firstname2",
  last_name: "lastname2",
  user_name: "user2",
  email: "user2@user.com",
  password: "password"
)

user_2.save!

puts '2 Users are created!'

puts 'Creating 12 default accommodations ...'

accommodation1 = Accommodation.create!(
  name: "accommodation_1",
  description: "this is description",
  location: "location 11111",
  available: true,
  property_type: "family type",
  price: rand(100),
  user_id: 1
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843635/8wha00enorrdh9suh8p7ztvt18td.jpg')
accommodation1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation1.save!

accommodation2 = Accommodation.create!(
  name: "accommodation_2",
  description: "this is description",
  location: "location 22222",
  available: true,
  property_type: "single type",
  price: rand(100),
  user_id: 1
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843635/rqf53dcs94g9est0ebbq8pi0vhdp.jpg')
accommodation2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation2.save!

accommodation3 = Accommodation.create!(
  name: "accommodation_3",
  description: "this is description",
  location: "location 33333",
  available: true,
  property_type: "friend type",
  price: rand(100),
  user_id: 1
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843636/0ix8qobg9az4uc4pdyh4xppv6we3.jpg')
accommodation3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation3.save!

accommodation4 = Accommodation.create!(
  name: "accommodation_4",
  description: "this is description",
  location: "location 444444",
  available: false,
  property_type: "family type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843638/n1z004f9ve8a3mwx2kp2s02d3t6j.jpg')
accommodation4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation4.save!

accommodation5 = Accommodation.create!(
  name: "accommodation_5",
  description: "this is description",
  location: "location 55555",
  available: true,
  property_type: "single type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843638/kpse6c1rclx3cq6yz7brdmtdr2g2.jpg')
accommodation5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation5.save!

accommodation6 = Accommodation.create!(
  name: "accommodation_6",
  description: "this is description",
  location: "location 66666",
  available: true,
  property_type: "friend type",
  price: rand(100),
  user_id: 1
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843638/kpse6c1rclx3cq6yz7brdmtdr2g2.jpg')
accommodation6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation6.save!

accommodation7 = Accommodation.create!(
  name: "accommodation_7",
  description: "this is description",
  location: "location 77777",
  available: false,
  property_type: "family type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843635/8wha00enorrdh9suh8p7ztvt18td.jpg')
accommodation7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation7.save!

accommodation8 = Accommodation.create!(
  name: "accommodation_8",
  description: "this is description",
  location: "location 88888",
  available: true,
  property_type: "single type",
  price: rand(100),
  user_id: 2
)


file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843635/rqf53dcs94g9est0ebbq8pi0vhdp.jpg')
accommodation8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation8.save!

accommodation9 = Accommodation.create!(
  name: "accommodation_9",
  description: "this is description",
  location: "location 99999",
  available: false,
  property_type: "friend type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843636/0ix8qobg9az4uc4pdyh4xppv6we3.jpg')
accommodation9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation9.save!

accommodation10 = Accommodation.create!(
  name: "accommodation_10",
  description: "this is description",
  location: "location 1010",
  available: true,
  property_type: "family type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843638/n1z004f9ve8a3mwx2kp2s02d3t6j.jpg')
accommodation10.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation10.save!

accommodation11 = Accommodation.create!(
  name: "accommodation_11",
  description: "this is description",
  location: "location 1111",
  available: true,
  property_type: "single type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843638/kpse6c1rclx3cq6yz7brdmtdr2g2.jpg')
accommodation11.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation11.save!

accommodation12 = Accommodation.create!(
  name: "accommodation_12",
  description: "this is description",
  location: "location 1212",
  available: true,
  property_type: "friend type",
  price: rand(100),
  user_id: 2
)

file = URI.open('https://res.cloudinary.com/dq6gibxhn/image/upload/v1603843638/kpse6c1rclx3cq6yz7brdmtdr2g2.jpg')
accommodation12.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
accommodation12.save!

puts 'Accommodations created!'
