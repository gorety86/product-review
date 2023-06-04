puts "Destroying old data..."
User.delete_all
Product.delete_all
Review.delete_all

puts "Seeding users..."
5.times do
  User.create(
    name: Faker::Name.name
  )
end
puts "Done seeding users..."