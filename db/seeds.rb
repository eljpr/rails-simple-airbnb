# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database'
Flat.destroy_all

puts 'Creating flats...'
clifton = {
  name: 'Light & Spacious Garden Flat London',
  address: '20 Greek St, London W1D 4DU',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

greek = {
  name: 'Trendy flat in the heart of Soho',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'Amazing location for party people. Three double bedrooms and a sofa bed in the living room.',
  price_per_night: 110,
  number_of_guests: 7
}

putney = {
  name: 'Spacious flat in Putney with tennis court',
  address: '176 Fawe Park Rd, London SW15 2EE',
  description: 'Spacious 3 bedroom flat with fully functional kitchen. Huge garden and tennis court',
  price_per_night: 95,
  number_of_guests: 6
}

camden = {
  name: 'Georgeous flat with garden with canal views',
  address: '30 Oval Rd, London NW1 7DE',
  description: 'Cosy and modern flat with a garden that gives directly onto the famous canal. Perfect for a romantic couples getaway',
  price_per_night: 149,
  number_of_guests: 3
}

[clifton, greek, putney, camden].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
