require "open-uri"
require "yaml"

file = "https://gist.githubusercontent.com/dmilon/e897669bfa411bfdd92c9f59f91dd6fe/raw/d1e1b06e25616771fddf44bf066765f518b0655d/imdb.yml"
sample = YAML.load(URI.open(file).read)

# "https://source.unsplash.com/random/250x250/?house"

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

puts "creating 8 listings"

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x251/?house",
  title: "Entire serviced apartment",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "No matter what, you will always find your own cozy place with us.",
  price: 109
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x252/?house",
  title: "Entire rental unit",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "Our property is situated in the West part of Amsterdam.",
  price: 118
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x253/?house",
  title: "Amazing house by the water",
  location: "Amsterdam, NH, Netherlands",
  content: "Fabulous Luxury Loft, located in the coolest neighbourhood of Amsterdam!",
  price: 250
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x254/?house",
  title: "Studio 25m2",
  location: "Badhoevedorp, Netherlands",
  content: "Amrath Apart-Hotel Schiphol is an 'extended stay' hotel.",
  price: 99
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x255/?house",
  title: "Home/Office Hybrid - Short Stay",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "We are Zoku and we would love to be your award-winning home-base.",
  price: 233
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x256/?house",
  title: "Sleep in a Hub!",
  location: "Badhoevedorp, Netherlands",
  content: "CityHub is a urban hotel for the new generation of travelers.",
  price: 100
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x257/?house",
  title: "Design apartment w/ terrace!",
  location: "Amstelveen, Netherlands",
  content: "Lovely design apartment with canal view, next to the famous Dutch windmill.",
  price: 174
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x258/?house",
  title: "Cityden Aparthotels",
  location: "Amstelveen, Netherlands",
  content: "A unique Aparthotel, where guests can make the make the most of their stay.",
  price: 128
)

puts "We created #{Listing.count} listings, there should be 8"
