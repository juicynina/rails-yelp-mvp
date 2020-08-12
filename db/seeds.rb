# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
karma = { name: 'Karma', address: 'Obarrio', phone_number: '555-5000', category: 'chinese' }
ozone = { name: 'Ozone', address: 'Marbella', phone_number: '555-5001', category: 'belgian' }
sakura = { name: 'Sakura', address: 'San Francisco', phone_number: '555-5002', category: 'japanese' }
urban = { name: 'Urban', address: 'Costa del Este', phone_number: '555-5003', category: 'italian' }
le_petite = { name: 'Le Petite Paris', address: 'Tocumen', phone_number: '555-5004', category: 'french' }

[karma, ozone, sakura, urban, le_petite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts 'Created #{restaurant.name}'
end
puts 'Finished!'
