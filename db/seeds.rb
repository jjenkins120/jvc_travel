# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'
require 'byebug'

# response = RestClient.get 'https://randomuser.me/api/'
# random_hash = JSON.parse(response.body)
# byebug

puts "destroying existing seeds"

Comment.destroy_all 
Tag.destroy_all 
Post.destroy_all 
Trip.destroy_all 
User.destroy_all 
Destination.destroy_all 

puts "seeding users"

50.times do
#response = RestClient.get 'https://randomuser.me/api/'
#random_hash = JSON.parse(response.body)
#random_hash["results"][0]["picture"]["large"]
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.unique.username, 
    email: Faker::Internet.email, 
    age: rand(18..95),
    profile_img_url: 'https://image.flaticon.com/icons/png/128/2919/2919600.png',
    favorite_destination: Faker::Address.city, 
    password: "password"
)
end

puts "seeding destinations"

50.times do
Destination.create(
        city: Faker::Address.city, 
        country: Faker::Address.country, 
        population: rand(30000..40000000), 
        known_for: Faker::Quote.matz
    )
end

puts "seeding trips"

15.times do
Trip.create(
    duration: rand(1..30), 
    cost: rand(500..50000), 
    title: Faker::Book.title, 
    user_id: User.all.sample.id, 
    destination_id: Destination.all.sample.id, 
)
end

puts "seeding posts"

50.times do
Post.create(
    title: Faker::App.name, 
    description: Faker::Quote.famous_last_words, 
    likes: rand(0..1000),
    trip_id: Trip.all.sample.id,
    image: "https://img.theculturetrip.com/1024x574/smart/wp-content/uploads/2020/03/mexico1.jpg"
)
end

puts "seeding comments"

50.times do
Comment.create(
    description:Faker::Quote.famous_last_words, 
    post_id: Post.all.sample.id, 
    user_id: User.all.sample.id
)
end

# puts "seeding tags"

# 50.times do
# Tag.create(
#     name:Faker::App.name, 
#     post_id: Post.all.sample.id, 
# )
# end

puts "DONE!"




