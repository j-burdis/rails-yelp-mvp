# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts ""

Restaurant.destroy_all
puts "Database cleaned"

puts "Creating restaurants"
greggs = { name: "Greggs", address: "Newcastle", phone_number: "07898765432", category: "belgian" }
spoons = { name: "Spoons", address: "Hexham", phone_number: "07654321234", category: "chinese" }
costa = { name: "Costa", address: "Ryton", phone_number: "07246864246", category: "japanese" }
dicksons = { name: "Dicksons", address: "Blaydon", phone_number: "07135797531", category: "french" }
minchellas = { name: "Minchella's", address: "South Shields", phone_number: "07864246864", category: "italian" }


[ greggs, spoons, costa, dicksons, minchellas ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
