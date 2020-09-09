# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying existing seeds"

Comment.destroy_all 
Tag.destroy_all 
Post.destroy_all 
Trip.destroy_all 
User.destroy_all 
Destination.destroy_all 

puts "seeding users"

50.times do
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.unique.username , 
    email: Faker::Internet.email, 
    age: rand(18..95),
    profile_img_url: "https://images.app.goo.gl/swXiNaheB16gSvHP8", 
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

50.times do
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



