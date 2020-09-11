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
#  response = RestClient.get 'https://randomuser.me/api/'
#  random_hash = JSON.parse(response.body)
# random_hash["results"][0]["picture"]["medium"]
#'https://image.flaticon.com/icons/png/128/2919/2919600.png'
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

# 50.times do
Destination.create(
        city: 	"Kabul", country: "Afghanistan", population: rand(30000..40000000), known_for: Faker::Quote.matz,
        img_url: "https://www.orfonline.org/wp-content/uploads/2017/10/kabul.jpg"
    )
    Destination.create(
        city: 	"Tirana",  country: "Albania", population: rand(30000..40000000), known_for: Faker::Quote.matz,
        img_url: "https://cdn.britannica.com/35/195935-050-456D7CBC/Skanderbeg-Square-Tirana-Albania.jpg"
    )
    Destination.create(
        city: 	"Algiers", country: "Algeria", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://d1bvpoagx8hqbg.cloudfront.net/originals/experience-in-algiers-algeria-by-bennour-d648f3377fbab01fd8fa4f41764cb7a3.jpg"
    )
    Destination.create(
        city: 	"Luanda", country: "Angola", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://i.pinimg.com/originals/12/e4/f0/12e4f0b8ca2034f0887170c30e97eb16.jpg"
    )
    Destination.create(
        city: 	"Buenos Aries", country: "Argentina", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://www.liveandinvestoverseas.com/wp-content/uploads/2015/06/buenos-aires-argentina.jpg"
    )
    Destination.create(
        city: 	"Canberra", country: "Australia", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://www.smartdestinations.com/img/pt/dest/Syd/att/Syd_Att_Canberra_Australia_s_Capital_Tour/gallery/Canberra-Australia-s-Capital-Tour-1.jpg"
    )
    Destination.create(
        city: 	"Yerevan", country: "Armenia", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://cdn.britannica.com/85/133085-050-FF7058E4/Yerevan-peaks-Arm-background-Mount-Ararat.jpg"
    )
    Destination.create(
        city: 	"Vienna",country: "Austria", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://www.jetsetter.com/wp-content/uploads/sites/7/2018/11/GettyImages-499336494-e1541617012890-1380x690.jpg"
    )
    Destination.create(
        city: 	"Brussels", country: "Belgium", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://static.brusselsairlines.com/_img/destinationPage2/Belgium/Brussels/Brussels_grand_place.jpg"
    )
    Destination.create(
        city: 	"Belmopan",country: "Belize", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://s9416.pcdn.co/wp-content/uploads/2017/12/BELIZE.jpg"
    )
    Destination.create(
        city: 	"Sucre ",country: "Bolivia ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.applelanguages.com/en/img/top/sucre.jpg"
    )
    Destination.create(
        city: 	"Rio De Janeiro ", country: "Brazil ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://parade.com/wp-content/uploads/2016/07/rio-de-janeiro-brazil-olympics-ftr.jpg"
    )
    Destination.create(
        city: 	"Sofia ", country: "Bulgaria ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://www.businessdestinations.com/wp-content/uploads/2018/02/Sofia-2.jpg "
    )
    Destination.create(
        city: 	"Phnom Penh ", country: "Cambodia ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.tripsavvy.com/thmb/cuquh_3R3DsGPUEsgcDOY2KYxU4=/3864x2173/smart/filters:no_upscale()/cambodia--phnom-penh--cityscape-with-royal-palace-709135023-5c2fbd98c9e77c000163a5f2.jpg"
    )
    Destination.create(
        city: 	"Yaounde ", country: "Cameroon ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.cameroonintelligencereport.com/wp-content/uploads/2018/04/Yaounde.jpg"
    )
    Destination.create(
        city: 	"Ottawa ",country: "Canada ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://i.ytimg.com/vi/9qnaJexpdrM/maxresdefault.jpg "
    )
    Destination.create(
        city: 	"N'djamena ",country: " Chad", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://www.airpano.com/files/chad-1/images/image5.jpg "
    )
    Destination.create(
        city: 	" Santiago", country: "Chile ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.hellomagazine.com/imagenes/travel/2017121444802/top-10-things-to-do-santiago-chile/0-226-737/1-Santiago-Chile-t.jpg"
    )
    Destination.create(
        city: 	"Beijing ",country: " China", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://static01.nyt.com/images/2020/06/03/world/03hongkong-damages-1/03hongkong-damages-1-mobileMasterAt3x.jpg "
    )
    Destination.create(
        city: 	"Bogotá  ",country: "Colombia ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://gbdmagazine.com/wp-content/uploads/2018/05/Bogota%CC%81-green-building-e1525272094931.jpg "
    )
    Destination.create(
        city: 	"Zagreb  ",country: " Croatia", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.transitionsabroad.com/images/zagreb-croatia-street-scene.jpg"
    )
    Destination.create(
        city: 	" Havana ",country: "Cuba ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://expertvagabond.com/wp-content/uploads/havana-things-to-do-guide-900x596.jpg "
    )
    Destination.create(
        city: 	" Prague ",country: "Czech Republic ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://emerging-europe.com/wp-content/uploads/2020/06/bigstock-prague-czech-republic-april-351993410-990x556.jpg"
    )
    Destination.create(
        city: 	" Copenhagen ",country: "Denmark ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://thumbnails.expedia.com/qkmi4p_HqGp5w3u81LY8AdpW-_w=/536x384/smart/filters:quality(60)/a.cdn-hotels.com/cos/heroimage/Copenhagen_0_161158985.jpg"
    )
    Destination.create(
        city: 	"Cairo  ",country: "Egypt ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.tripsavvy.com/thmb/q5BO_VpvVXrQ3EyKI4mFjWGFrZo=/2120x1192/smart/filters:no_upscale()/high-angle-view-of-cairo-during-daytime--egypt-940395494-5c572f4246e0fb00013a2bb8.jpg"
    )
    Destination.create(
        city: 	"Addis Ababa  ",country: "Ethiopia ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://spacegeneration.org/wp-content/uploads/2019/08/Screenshot-2019-08-31-at-6.29.01-PM.png"
    )
    Destination.create(
        city: 	"Paris  ",country: "France ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://cdn.travelpulse.com/images/faa9edf4-a957-df11-b491-006073e71405/c0594e9a-dd27-41b9-b02b-0c0362deadce/630x355.jpg"
    )
    Destination.create(
        city: 	" Berlin ",country: "Germany ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://upload.wikimedia.org/wikipedia/commons/6/6c/Aerial_view_of_Berlin_%2832881394137%29.jpg"
    )
    Destination.create(
        city: 	" Accra ", country: " Ghana", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://upload.wikimedia.org/wikipedia/commons/b/b6/A_drone_footage_of_Accra_central%2C_Ghana.jpg"
    )
    Destination.create(
        city: 	"Athens", country: "Greece ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://s.abcnews.com/images/International/athens-greece-rf-gty-ml-190719_hpMain_16x9_992.jpg"
    )
    Destination.create(
        city: 	"Dublin ",country: "Ireland ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://blog.goway.com/globetrotting/wp-content/uploads/2018/04/Dublin-Skyline-and-Liffey-River-Dublin-Ireland-_226603810.jpg"
    )
    Destination.create(
        city: 	"Rome ",country: "Italy ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://blog.goway.com/globetrotting/wp-content/uploads/2018/01/Beautiful-cityscape-of-Rome-taken-from-the-top-of-Castel-Sant-Angelo-Rome-Italy_324683966.jpg "
    )
    Destination.create(
        city: 	"Tokyo ",country: "Japan ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.theinvisibletourist.com/wp-content/uploads/2017/08/featured_92.jpg"
    )
    Destination.create(
        city: 	"Vilnius ",country: "Lithuania ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/i64bee01c3d24042b/version/1472311280/vilnius.jpg "
    )
    Destination.create(
        city: 	"Mexico City ",country: "Mexico ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://www.fodors.com/wp-content/uploads/2019/03/FridaandDiegoMexicoCity__HERO_shutterstock_1005708952.jpg"
    )
    Destination.create(
        city: 	"Seoul ",country: "South Korea ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://media.shermanstravel.com/Advice/952x460_seoul_istock.jpg "
    )
    Destination.create(
        city: 	"Damascus ",country: "Syria ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://cdn1.img.sputniknews.com/img/103294/73/1032947362_0:193:3072:1854_1000x541_80_0_0_168062209af9dfadd8182be824767f0f.jpg"
    )
    Destination.create(
        city: 	"Chicago", country: " USA", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://media.timeout.com/images/105649106/image.jpg "
    )
    Destination.create(
        city: 	"Sana'a", country: "Yemen ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: "https://cdn.britannica.com/49/139549-050-D1B8F018/Sanaa-Al-Salih-Mosque-Yemen-background.jpg "
    )
    Destination.create(
        city: 	"Vientiane ",country: "Laos ", population: rand(30000..40000000),  known_for: Faker::Quote.matz,
        img_url: " https://cdn.audleytravel.com/3623/2589/79/15979523-patuxai-monument-vientiane-laos.jpg"
    )
   
    
    
# end

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




