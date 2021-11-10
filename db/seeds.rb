# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0681451684", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0662949597", category: "italian" }
blabla = { name: "Blabla", address: "10 Pasdinspi St, London E2 7JE", phone_number: "0600000001", category: "chinese" }
toto = { name: "Toto", address: "30 Jsp St, London E2 7JE", phone_number: "0600000002", category: "french" }
dernier = { name: "Dernier", address: "58 Pourquoipas St, London E2 7JE", phone_number: "0600000003", category: "belgian" }

[dishoom, pizza_east, blabla, toto, dernier].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
