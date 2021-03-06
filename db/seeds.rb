# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroy users"
User.destroy_all

puts "Destroy vehicles"
Vehicle.destroy_all

puts "Create users"

file_user_1 = URI.open('https://kitt.lewagon.com/placeholder/users/ssaunier')
user = User.new(email: "jean@lewagon.com", nick_name: "jean123", first_name: "Jean",
  last_name: "le maire", phone_number: "079 135 34 76", password: "123456")

user.photo.attach(io: file_user_1, filename: 'avatar.png', content_type: 'image/png')
user.save!


file_user_2 = URI.open('https://kitt.lewagon.com/placeholder/users/mickborr')
user = User.new(email: "marie@lewagon.com", nick_name: "marie123", first_name: "marie",
  last_name: "Leoni", phone_number: "079 100 98 17", password: "123456")

user.photo.attach(io: file_user_2, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_3 = URI.open('https://kitt.lewagon.com/placeholder/users/reschadahmadi')
user = User.new(email: "Luc@lewagon.com", nick_name: "Luc123", first_name: "Luc",
last_name: "Lietard", phone_number: "076 184 09 74", password: "123456")

user.photo.attach(io: file_user_3, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_4 = URI.open('https://kitt.lewagon.com/placeholder/users/antoinero')
user = User.new(email: "Arnaud@lewagon.com", nick_name: "Arnaud123", first_name: "Arnaud",
 last_name: "Montagny", phone_number: "077 612 45 37", password: "123456")

user.photo.attach(io: file_user_4, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_5 = URI.open('https://kitt.lewagon.com/placeholder/users/eth-ivan')
user = User.new(email: "Eva@lewagon.com", nick_name: "Eva123", first_name: "Eva",
last_name: "Coupy", phone_number: "078 465 73 92", password: "123456")

user.photo.attach(io: file_user_5, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_6 = URI.open('https://kitt.lewagon.com/placeholder/users/michaellaurac')
user = User.new(email: "Meline@lewagon.com", nick_name: "Meline123", first_name: "Meline",
last_name: "Chanel", phone_number: "079 777 99 00", password: "123456")

user.photo.attach(io: file_user_6, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_7 = URI.open('https://kitt.lewagon.com/placeholder/users/ShadyaJ')
user = User.new(email: "Shadya@lewagon.com", nick_name: "Shadya123", first_name: "Shadya",
last_name: "Jaquier", phone_number: "079 777 99 01", password: "123456")

user.photo.attach(io: file_user_7, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_8 = URI.open('https://kitt.lewagon.com/placeholder/users/clem13-coder')
user = User.new(email: "Clementine@lewagon.com", nick_name: "Clementine123", first_name: "Clementine",
last_name: "Dubuis", phone_number: "079 777 99 02", password: "123456")

user.photo.attach(io: file_user_8, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_9 = URI.open('https://kitt.lewagon.com/placeholder/users/ismooz')
user = User.new(email: "Ismael@lewagon.com", nick_name: "Ismael123", first_name: "Ismael",
last_name: "Dub", phone_number: "079 777 99 03", password: "123456")

user.photo.attach(io: file_user_9, filename: 'avatar.png', content_type: 'image/png')
user.save!

file_user_10 = URI.open('https://kitt.lewagon.com/placeholder/users/mjobin123')
user = User.new(email: "Martin@lewagon.com", nick_name: "Martin123", first_name: "Martin",
last_name: "Jobin", phone_number: "079 777 99 04", password: "123456")

user.photo.attach(io: file_user_10, filename: 'avatar.png', content_type: 'image/png')
user.save!

puts User.count

puts "Create vehicles"

file_1 = URI.open('https://ychef.files.bbci.co.uk/976x549/p01cn248.jpg')
vehicle = Vehicle.new(description: "Be Luke Skywalker for once in your life",
  name: "Star Wars Scooter", cost_per_day: 7, category: "electric motorbike", user: User.all.sample,
  address: "Rue du village 8", city: "le mont-sur-lausanne", country: "Switzerland")

vehicle.photos.attach(io: file_1, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_2 = URI.open('https://www.bricoetloisirs.ch/img/products/930Wx620H/5626143_001.jpg?_=1511605617684')
vehicle = Vehicle.new(description: "This is a super electric scooter with battery long range",
  name: "electric bike", cost_per_day: 25, category: "electric bicycle", user: User.all.sample,
  address: "Place de la Gare 4", city: "Renens", country: "Switzerland")

vehicle.photos.attach(io: file_2, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_3 = URI.open('https://www.ebike-generation.com/img/catalogue/moto/electric-motion-emlite.jpg')
vehicle = Vehicle.new(description: "This is a super electric motorbike with battery long range",
  name: "super electric bike", cost_per_day: 60, category: "electric motorbike", user: User.all.sample,
  address: "Chemin de Montelly 43A", city: "Lausanne", country: "Switzerland")

vehicle.photos.attach(io: file_3, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_4 = URI.open('https://4cd4cj14l1sc1dgwgl3o3ja5-wpengine.netdna-ssl.com/wp-content/uploads/2020/07/RIEJU-Moto-MRT-125-SM-PRO.jpg')
vehicle = Vehicle.new(description: "Come to try the new motorbike super confortable for long road trips",
  name: "motorbike", cost_per_day: 42, category: "motorbike", user: User.all.sample,
  img_url: "https://4cd4cj14l1sc1dgwgl3o3ja5-wpengine.netdna-ssl.com/wp-content/uploads/2020/07/RIEJU-Moto-MRT-125-SM-PRO.jpg",
  address: "Chemin de Fontadel 2", city: "Prilly", country: "Switzerland")

vehicle.photos.attach(io: file_4, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_5 = URI.open('https://cafe-racer-only.com/IMG/jpg/sacoche-moto-cafe-racer-givi-20.jpg')
vehicle = Vehicle.new(description: "This is a great motorbike with helmet box",
  name: "motorbike", cost_per_day: 60, category: "motorbike", user: User.all.sample,
  address: "Rue du Grand-Chêne 7-9", city: "Lausanne", country: "Switzerland")

vehicle.photos.attach(io: file_5, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_6 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRhBxZk7Mk_RfnE4yZH9EkOTY8BKvGmO2vNQ&usqp=CAU')
vehicle = Vehicle.new(description: "Super fast moto for your weekend drives ",
  name: "Moto 600cc", cost_per_day: 32, category: "motorbike", user: User.all.sample,
  address: "Chemin de Bellevue 12", city: "Cugy", country: "Switzerland")

vehicle.photos.attach(io: file_6, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_7 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw3qQwUcVF4Vpw7s7ftUKyDH5X4SHtbvd8tg&usqp=CAU')
vehicle = Vehicle.new(description: "Great moto for discovering the alps",
  name: "Moto cruiser", cost_per_day: 29, category: "scooter", user: User.all.sample,
  address: "Rue de Morges 13", city: "Crissier", country: "Switzerland")

vehicle.photos.attach(io: file_7, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_8 = URI.open('https://i.pinimg.com/originals/32/0b/de/320bde551e582c2a28d8d8d450e7d2bc.jpg')
vehicle = Vehicle.new(description: "First ever electric Harley be the first to try",
  name: "Electric moto", cost_per_day: 48, category: "electric motorbike", user: User.all.sample,
  address: "Route du Stand 6", city: "Etoy", country: "Switzerland")

vehicle.photos.attach(io: file_8, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_9 = URI.open('https://img.tinxe.vn/resize/1000x-/2020/01/13/zQpUCnuo/2019-harley-davidson-electric-concept-ces-03-28cc.jpg')
vehicle = Vehicle.new(description: "Very rare electric bike, only 3 produced in the world",
  name: "Electric concept bike", cost_per_day: 148, category: "electric bicycle", user: User.all.sample,
  address: "Rue de Berne 29", city: "Genève", country: "Switzerland")

vehicle.photos.attach(io: file_9, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_10 = URI.open('https://techcrunch.com/wp-content/uploads/2020/07/Screen-Shot-2020-07-13-at-11.19.07-AM.jpg?w=730&crop=1')
vehicle = Vehicle.new(description: "Unique design and light",
  name: "Bike Concept  ", cost_per_day: 18, category: "electric bicycle", user: User.all.sample,
  address: "Cours de Rive 6", city: "Genève", country: "Switzerland")

vehicle.photos.attach(io: file_10, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_11 = URI.open('https://images.giant-bicycles.com/b_white,c_pad,h_600,q_80,w_800/t7medeed38opxll9luxk/MY20Escape3_ColorA.jpg')
vehicle = Vehicle.new(description: " confortable bike ideal for discovering towns and cities",
  name: "City bike  ", cost_per_day: 7, category: "bicycle", user: User.all.sample,
  address: "Cours de Rive 6", city: "Genève", country: "Switzerland")

vehicle.photos.attach(io: file_11, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

file_12 = URI.open('https://swiss-distribution.com/wp-content/uploads/2020/06/trottinette_electrique_dualtron-storm_pas_cher_1024x1024.jpg')
vehicle = Vehicle.new(description: "Light and fast and very super fun",
  name: "Black Kick Scooter", cost_per_day: 7, category: "electric kick scooter", user: User.all.sample,
  address: "Rue du Lac 2-8", city: "Montreux", country: "Switzerland")

vehicle.photos.attach(io: file_12, filename: 'nes.jpg', content_type: 'image/jpg')
vehicle.save!

puts Vehicle.count


