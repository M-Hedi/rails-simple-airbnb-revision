# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all


Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)


Flat.create!(
  name: "Charmant studio à Paris",
  address: "10 rue de Rivoli, Paris",
  description: "Un studio très lumineux au cœur de la ville",
  price_per_night: 75,
  number_of_guests: 2
)

Flat.create!(
  name: "Loft à Lille",
  address: "5 rue Nationale, Lille",
  description: "Grand loft moderne avec terrasse",
  price_per_night: 120,
  number_of_guests: 4
)
