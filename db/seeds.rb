# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Create users"
User.create(email: "jean@lewagon.com", nick_name: "jean123", first_name: "Jean",
  last_name: "le maire", phone_number: "079 135 34 76" password: "12345678")

User.create(email: "marie@lewagon.com", nick_name: "marie123", first_name: "marie",
  last_name: "Leoni", phone_number: "079 100 98 17", password: "12345678")

User.create(email: "Luc@lewagon.com", nick_name: "Luc123", first_name: "Luc",
  last_name: "Lietard", phone_number: "076 184 09 74", password: "12345678")

User.create(email: "Arnaud@lewagon.com", nick_name: "Arnaud123", first_name: "Arnaud",
  last_name: "Montagny", phone_number: "077 612 45 37", password: "12345678")

User.create(email: "Eva@lewagon.com", nick_name: "Eva123", first_name: "Eva",
  last_name: "Coupy", phone_number: "078 465 73 92", password: "12345678")

User.create(email: "Meline@lewagon.com", nick_name: "Meline123", first_name: "Meline",
  last_name: "Chanel", phone_number: "079 777 99 00", password: "12345678")

User.count

puts "Create vehicles"

Vehicle.create(description: "There is a super electric bicycle with battries long rang",
  name: "electric bike", cost_per_day: 22.70, category: "electric bicycle", user_id: )

Vehicle.create(description: "There is a super electric scooter with battries long rang",
  name: "electric scooter", cost_per_day: 10, category: "electric scooter", user_id: )

Vehicle.create(description: "There is a super electric motorbike with battries long rang",
  name: "super electric bike", cost_per_day: 60, category: "electric motorbike", user_id: )

Vehicle.create(description: "Come to try my new motorbike super conforatble for road trips",
  name: "motorbike", cost_per_day: 22.70, category: "motorbike", user_id: )

Vehicle.create(description: "There is a super scooter with boxes",
  name: "scooter", cost_per_day: 22.70, category: "scooter", user_id: )

Vehicle.count


