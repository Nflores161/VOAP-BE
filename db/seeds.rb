# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all previous users..."
User.destroy_all
puts "Users have been decimated from the database..."

puts "Seeding users..."
50.times do
User.create(
  name: Faker::Artist.name,
  age: Faker::Number.between(from: 18, to: 90), 
  location: Faker::Address.state,
  bio: Faker::TvShows::BigBangTheory.quote,
  email: Faker::Internet.email,
  password: Faker::Alphanumeric.alphanumeric(number: 10),
  profile_pic_url: Faker::LoremFlickr.image
)
end

puts "Seeding Completed..."