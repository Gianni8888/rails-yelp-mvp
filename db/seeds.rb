# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
chinese = { name: 'Yang Pao', address: '7 Round St, Beijing', reviews: 3 }
italian =  { name: 'Mamma mia', address: '56A Square St, Roma', reviews: 4 }
japanese = { name: 'Shimutsu', address: '34 Sun St, Tokyo', reviews: 4 }
french = { name: 'Bagette', address: '3 Moon St, Paris', reviews: 2 }
belgian = { name: 'Waffle', address: '78 Purple St, Tokyo', reviews: 3 }
[chinese, italian, japanese, french, belgian].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
