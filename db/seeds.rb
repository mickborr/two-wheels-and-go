# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Create users"
User.create(email: "jean@lewagon.com", nick_name: "jean123", first_name: "Jean",
  last_name: "le maire", phone_number: "079 135 34 76", password: "123456")

User.create(email: "marie@lewagon.com", nick_name: "marie123", first_name: "marie",
  last_name: "Leoni", phone_number: "079 100 98 17", password: "123456")

User.create(email: "Luc@lewagon.com", nick_name: "Luc123", first_name: "Luc",
  last_name: "Lietard", phone_number: "076 184 09 74", password: "123456")

User.create(email: "Arnaud@lewagon.com", nick_name: "Arnaud123", first_name: "Arnaud",
  last_name: "Montagny", phone_number: "077 612 45 37", password: "123456")

User.create(email: "Eva@lewagon.com", nick_name: "Eva123", first_name: "Eva",
  last_name: "Coupy", phone_number: "078 465 73 92", password: "123456")

User.create(email: "Meline@lewagon.com", nick_name: "Meline123", first_name: "Meline",
  last_name: "Chanel", phone_number: "079 777 99 00", password: "123456")

puts User.count

puts "Create vehicles"

Vehicle.create(description: "This is a super electric bicycle with battery long range",
  name: "electric bike", cost_per_day: 22.70, category: "electric bicycle", user: User.all.sample img_url: "https://www.bricoetloisirs.ch/img/products/930Wx620H/5626143_001.jpg?_=1511605617684
")

Vehicle.create(description: "This is a super electric scooter with battery long range",
  name: "electric scooter", cost_per_day: 10, category: "electric scooter", user: User.all.sample, img_url: "https://www.ebike-generation.com/img/catalogue/scooter-electrique/niu-n-series.jpg")

Vehicle.create(description: "This is a super electric motorbike with battery long range",
  name: "super electric bike", cost_per_day: 60, category: "electric motorbike", user: User.all.sample, img_url: "https://www.ebike-generation.com/img/catalogue/moto/electric-motion-emlite.jpg")

Vehicle.create(description: "Come to try the new motorbike super confortable for long road trips",
  name: "motorbike", cost_per_day: 22.70, category: "motorbike", user: User.all.sample, img_url: "https://4cd4cj14l1sc1dgwgl3o3ja5-wpengine.netdna-ssl.com/wp-content/uploads/2020/07/RIEJU-Moto-MRT-125-SM-PRO.jpg")

Vehicle.create(description: "This is a great motorbike with helmet box",
  name: "motorbike", cost_per_day: 22.70, category: "scooter", user: User.all.sample, img_url: "https://lh3.googleusercontent.com/proxy/reTsuJf75tx3z-rtSLFpl6gRvYf_ALF__4xybce-0eiX-BfyE[…]6vGJnJfjIV8OOOHj18O38HXBB3AcBLL0pmBS5rmSn2JUFzuqIycQCQ8Q")

puts Vehicle.count


