require "open-uri"
require "yaml"
require "faker"

file = "https://gist.githubusercontent.com/dmilon/e897669bfa411bfdd92c9f59f91dd6fe/raw/d1e1b06e25616771fddf44bf066765f518b0655d/imdb.yml"
sample = YAML.load(URI.open(file).read)

# "https://source.unsplash.com/random/500x500/?house"

puts "deleting bookings"
Booking.destroy_all
puts "there are #{Booking.count} users, there should be 0"

puts "deleting lists"
Listing.destroy_all
puts "there are #{Listing.count} users, there should be 0"

puts "deleting users"
User.destroy_all
puts "there are #{User.count} users, there should be 0"

puts "creating one user"
user = User.create!(email: "robertaefreitas@gmail.com", password: "123456", first_name: "Roberta", last_name: "Freitas")
puts "there is #{User.count} user, there should be 1"

puts "creating #{Listing.count} listings"

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x500/?house",
  title: "Amazing house by the water",
  location: "Rotterdam, Netherlands",
  content: "A unique Aparthotel, where guests can make the make the most of their stay.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x501/?house",
  title: "Entire serviced apartment",
  location: "Haarlem, Noord-Holland, Netherlands",
  content: "No matter what, you will always find your own cozy place with us.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x502/?house",
  title: "Entire rental unit",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "Our property is situated in the West part of Amsterdam.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x503/?house",
  title: "Amazing house by the water",
  location: "Amsterdam, NH, Netherlands",
  content: "A lovely place to send a vacation",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x504/?house",
  title: "Studio 25m2",
  location: "Badhoevedorp, Netherlands",
  content: "Amrath Apart-Hotel Schiphol is an 'extended stay' hotel.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x505/?house",
  title: "Home/Office Hybrid - Short Stay",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "We are Zoku and we would love to be your award-winning home-base.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x506/?house",
  title: "Sleep in a Hub!",
  location: "Badhoevedorp, Netherlands",
  content: "CityHub is a urban hotel for the new generation of travelers.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x507/?house",
  title: "Design apartment w/ terrace!",
  location: "Amstelveen, Netherlands",
  content: "Lovely design apartment with canal view, next to the famous Dutch windmill.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x508/?house",
  title: "Cityden Aparthotels",
  location: "Amstelveen, Netherlands",
  content: "A unique Aparthotel, where guests can make the make the most of their stay.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x509/?house",
  title: "Entire rental unit",
  location: "utrecht, Netherlands",
  content: "Our property is situated in the West part of Amsterdam.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x510/?house",
  title: "Feels just like home",
  location: "Rotterdam, Netherlands",
  content: "A unique Aparthotel, where guests can make the make the most of their stay.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x511/?house",
  title: "Amazing house by the water",
  location: "Rotterdam, Netherlands",
  content: "A unique Aparthotel, where guests can make the make the most of their stay.",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)
listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x512/?house",
  title: "Amazing house by the water",
  location: "Amsterdam, NH, Netherlands",
  content: "A lovely place to send a vacation",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)
listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x513/?house",
  title: "Great Location",
  location: "Amsterdam, NH, Netherlands",
  content: "A lovely place to send a vacation",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)
listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x514/?house",
  title: "Amazing house by the water",
  location: "Breda, NH, Netherlands",
  content: "A lovely place to send a vacation",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)
listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/500x515/?house",
  title: "Amazing house by the water",
  location: "Haarlem, NH, Netherlands",
  content: "A lovely place to send a vacation",
  price: Faker::Commerce.price(range: 100..300.0, as_string: true)
)
puts "We created #{Listing.count} listings"
