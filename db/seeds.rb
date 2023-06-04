puts "Destroying old data..."
User.delete_all
Product.delete_all
Review.delete_all

puts "Seeding users..."
10.times do
  User.create(
    name: Faker::Name.name
  )
end
puts "Done seeding users"

puts "Seeding products..."
10.times do
    Product.create(
        name: Faker::Name.name,
        price: Faker::Commerce.price
    )
end
puts "Done seeding products..."

puts "Seeding reviews..."
10.times do
  Review.create(
    star_rating: Faker::Number.between(from: 1, to: 10),
    comment: Faker::Lorem.sentence,
    user_id: User.pluck(:id).sample,
    product_id: Product.pluck(:id).sample
  )
end
puts "Done seeding reviews..."