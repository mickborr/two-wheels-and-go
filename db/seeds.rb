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
  name: "electric bike", cost_per_day: 22.70, category: "electric bicycle", user: User.all.sample)

Vehicle.create(description: "This is a super electric scooter with battery long range",
  name: "electric scooter", cost_per_day: 10, category: "electric scooter", user: User.all.sample)

Vehicle.create(description: "This is a super electric motorbike with battery long range",
  name: "super electric bike", cost_per_day: 60, category: "electric motorbike", user: User.all.sample)

Vehicle.create(description: "Come to try my new motorbike super confortable for long road trips",
  name: "motorbike", cost_per_day: 22.70, category: "motorbike", user: User.all.sample)

Vehicle.create(description: "This is a great scooter with helmet box",
  name: "scooter", cost_per_day: 22.70, category: "scooter", user: User.all.sample)

puts Vehicle.count


