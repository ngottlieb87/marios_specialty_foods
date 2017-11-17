50.times do
  Product.create!(name: Faker::Food.unique.dish,
                  cost: Faker::Number.decimal(2),
                  country_origin: Faker::ElderScrolls.region)
end

p "Created #{Product.count} products"

#seeding albums
250.times do
  Album.create!(title: Faker::Hipster.unique.sentence(5),
                artist_id: Faker::Number.between(1, 50))
end

p "Created #{Album.count} albums"
