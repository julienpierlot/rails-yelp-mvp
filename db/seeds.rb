random_names = ['Macdo', 'Quick', 'Chez Momo', 'Chez Toto', 'Toto', 'Popo']
5.times do |number|
  restaurant = Restaurant.create!(name: random_names.sample, category: Restaurant::CATEGORIES.sample, address: "Paris", phone_number: 1234567891)
  puts restaurant.name
  review = Review.create!(restaurant: restaurant, rating: Review::RATINGS.sample, content: "Top restaurant")
  puts review.content
end
