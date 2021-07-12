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
ArtImage.destroy_all
puts "Destroying art images"

# puts "Seeding users..."
# 50.times do
# User.create(
#   name: Faker::Artist.name,
#   age: Faker::Number.between(from: 18, to: 90), 
#   location: Faker::Address.state,
#   bio: Faker::TvShows::BigBangTheory.quote,
#   email: Faker::Internet.email,
#   password: Faker::Alphanumeric.alphanumeric(number: 10),
#   profile_pic_url: Faker::LoremFlickr.image
# )
# end

puts "Seeding punks..."

User.create(
  name: "Nick",
  age: 30, 
  location: "Brooklyn, NY",
  bio: "Art is power",
  email: "nflores161@gmail.com",
  password: "p",
  profile_pic_url: "https://img.discogs.com/NxNH1iqkLvxtJLGHtbhxFwwGlr8=/fit-in/478x480/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12683588-1539991219-7800.jpeg.jpg",
  genre: "punk"
)

User.create(
  name: "Joe",
  age: 22, 
  location: Faker::Address.state,
  bio: "Fight the system",
  email: "joe@gmail.com",
  password: "p",
  profile_pic_url: "https://louisem.com/wp-content/uploads/2017/10/scary-clown-profile-picture.jpg",
  genre: "punk"
)


User.create(
  name: "Lara",
  age: 23, 
  location: Faker::Address.state,
  bio: "A photo tells a thousand words",
  email: "lara@gmail.com",
  password: "p",
  profile_pic_url: "https://cdnb.artstation.com/p/assets/images/images/028/994/103/20200730123010/smaller_square/noob-profile-8.jpg?1596130210",
  genre: "punk"
)

User.create(
  name: "Shannon",
  age: 35, 
  location: Faker::Address.state,
  bio: "Art is societys victim",
  email: "shannon@gmail.com",
  password: "p",
  profile_pic_url: "https://cdna.artstation.com/p/assets/images/images/028/433/796/smaller_square/noob-profile-2.jpg?1594466212",
  genre: "punk"
)

puts "Seeding metalheads...."

User.create(
  name: "Jeff",
  age: 40, 
  location: Faker::Address.state,
  bio: "Rip and destroy",
  email: "jeff@gmail.com",
  password: "p",
  profile_pic_url: "https://www.tuellmckee.com/wp-content/uploads/bfi_thumb/uploads/wpfuneralpress-cache/215197-3-oou6hjf6mk4ei7260fn35mk7x9xbarjl3mdvbh0www.jpg",
  genre: "metal"
)

User.create(
  name: "Ray",
  age: 26, 
  location: Faker::Address.state,
  bio: "Do what makes you happy",
  email: "ray@gmail.com",
  password: "p",
  profile_pic_url: "https://www.seekpng.com/png/full/354-3541036_angry-sf-guy-png-alien.png",
  genre: "metal"
)

User.create(
  name: "Jill",
  age: 37, 
  location: Faker::Address.state,
  bio: "Embrace the evillll",
  email: "jill@gmail.com",
  password: "p",
  profile_pic_url: "https://pbs.twimg.com/profile_images/994450550375813122/bHaz1ft7_400x400.jpg",
  genre: "metal"
)

User.create(
  name: "Greg",
  age: 42, 
  location: Faker::Address.state,
  bio: "Shred fast, create faster",
  email: "greg@gmail.com",
  password: "p",
  profile_pic_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU_eeRLwj3p0aAIhq_yZCZ2AEcQjgcTwMAaw&usqp=CAU",
  genre: "metal"
)

puts "Seeding Noise Kids..."

User.create(
  name: "Dave",
  age: 48, 
  location: Faker::Address.state,
  bio: "Nothing should make sense",
  email: "dave@gmail.com",
  password: "p",
  profile_pic_url: "https://i.pinimg.com/564x/93/15/47/931547371ceff7dc3f3db39c67817785.jpg",
  genre: "noise"
)

User.create(
  name: "Sally",
  age: 20, 
  location: Faker::Address.state,
  bio: "More choas, more fun",
  email: "sally@gmail.com",
  password: "p",
  profile_pic_url: "https://static01.nyt.com/images/2021/01/04/books/review/Berry1/Berry1-popup.jpg?quality=75&auto=webp&disable=upscale",
  genre: "noise"
)

User.create(
  name: "Ishmael",
  age: 19, 
  location: Faker::Address.state,
  bio: "We all live and we all die",
  email: "ishmael@gmail.com",
  password: "p",
  profile_pic_url: "https://cdnb.artstation.com/p/assets/images/images/036/227/971/smaller_square/abstrakt-dude-screenshot-58.jpg?1617079999",
  genre: "noise"
)

User.create(
  name: "Maria",
  age: 36, 
  location: Faker::Address.state,
  bio: "See through the looking glass",
  email: "maria@gmail.com",
  password: "p",
  profile_pic_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU_eeRLwj3p0aAIhq_yZCZ2AEcQjgcTwMAaw&usqp=CAU",
  genre: "noise"
)

puts "Seeding Electro Junkies..."

User.create(
  name: "Sarah",
  age: 21, 
  location: Faker::Address.state,
  bio: "Freak what you feel",
  email: "sarah@gmail.com",
  password: "p",
  profile_pic_url: "https://render.fineartamerica.com/images/rendered/search/print/images/artworkimages/medium/2/metalhead-heavy-metal-robot-devil-john-schwegel.jpg",
  genre: "electronic"
)

User.create(
  name: "Suzy",
  age: 48, 
  location: Faker::Address.state,
  bio: "Dont ever stop creating",
  email: "suzy@gmail.com",
  password: "p",
  profile_pic_url: "https://i.pinimg.com/474x/3b/b8/28/3bb828607d06bb8bc2a1fdbefd60fe8a.jpg",
  genre: "electronic"
)

User.create(
  name: "Juju",
  age: 22, 
  location: Faker::Address.state,
  bio: "See through the looking glass",
  email: "juju@gmail.com",
  password: "p",
  profile_pic_url: "https://www.denofgeek.com/wp-content/uploads/2017/12/black-mirror-best-episodes-metalhead.jpg?resize=400%2C400",
  genre: "electronic"
)

User.create(
  name: "Jessica",
  age: 23, 
  location: Faker::Address.state,
  bio: "Art is what you make it",
  email: "jessica@gmail.com",
  password: "p",
  profile_pic_url: "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/omfg--metalhead-metalgirl-metal-alex-garcia.jpg",
  genre: "electronic"
)



puts "Seeding Completed..."