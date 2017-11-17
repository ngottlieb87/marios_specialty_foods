Product.destroy_all
Review.destroy_all

50.times do
  Product.create!(name: Faker::Food.dish,
                  cost: Faker::Number.decimal(2),
                  country_origin: Faker::ElderScrolls.region)
end

p "Created #{Product.count} products"

#seeding reviews
250.times do
  Review.create!(author: Faker::Name.name,
                 content: Faker::Lorem.characters(char_count=250),
                 rating: Faker::Number.between(1, 5),
                 product_id: Faker::Number.between(1, 50))
end

p "Created #{Review.count} reviews"
