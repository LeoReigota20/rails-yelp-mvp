# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '17996125536', category: 'chinese' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '17996125536', category: 'italian' }
bullguer = { name: "bullguer", address: "wisard", phone_number: '17996125536', category: 'french' }
vintao = { name: "vintao", address: "fidalga", phone_number: '17996125536', category: 'japanese' }
tribunal = { name: "tribunal", address: "jerico", phone_number: '17996125536', category: 'belgian' }

[ dishoom, pizza_east, bullguer, vintao, tribunal].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
