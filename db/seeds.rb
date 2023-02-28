"https://source.unsplash.com/random/250x250/?house"

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
  title: "Entire serviced apartment hosted by Hotel2Stay",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "No matter what, you will always find your own cozy place with us:
  for business, to discover the city or just for recreation. As a stylish urban oasis,
  Hotel2Stay is for everybody who travels to Amsterdam and wishes to have a
  great stay.",
  price: 109
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x252/?house",
  title: "Entire rental unit hosted by Elias",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "Our property is situated in an old historical building located in the West part of Amsterdam, only a stroll away from the Rembrandt Park. The airport is only 7 minutes away by train. Bens The Walton features free Wi-Fi. Furthermore bicycles are available for rent. The apartments are split over two floors with modern decoration and a natural colour interior.",
  price: 118
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x253/?house",
  title: "Entire rental unit hosted by Ella",
  location: "Amsterdam, NH, Netherlands",
  content: "Fabulous and Unique Amsterdam GROUND FLOOR Luxury Loft, located in the Pijp, the coolest neighbourhood of Amsterdam! It is just a 7 minutes walk from the city centre and the main cultural and tourist spots. The street is quiet and beautiful!",
  price: 250
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x254/?house",
  title: "Studio 25m2 | Near Amsterdam & Schiphol",
  location: "Badhoevedorp, Netherlands",
  content: "Amrath Apart-Hotel Schiphol is an 'extended stay' hotel that offers 98 studios and apartments starting from 6 nights and longer. The Apart-Hotel is located in Badhoevedorp, a versatile area near the Amsterdamse Bos, Schiphol Airport and Amsterdam.",
  price: 99
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x255/?house",
  title: "Zoku Loft XL - Home/Office Hybrid - Short Stay",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "We are Zoku and we would love to be your award-winning home-base in the centre of Amsterdam. We focus on providing a home for business travellers from innovative and fast-growing companies worldwide.",
  price: 233
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x256/?house",
  title: "Sleep in a Hub!",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "CityHub is a urban hotel for the new generation of travelers.
  You stay in cool sleeping units called Hubs, you can chill and make friends in our hangout and prepare your own drinks at the self-service bar. In the hangout you can always find a CityHost, a local buddy who knows all the cool places and is available 24/7 through the CityHub App.",
  price: 100
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x257/?house",
  title: "Design apartment w/rooftop terrace!",
  location: "Amsterdam, Noord-Holland, Netherlands",
  content: "Lovely and light design apartment (50m2) with canal view, in a nice area next to the famous Dutch windmill. Cosy interior with all modern facilities available and a private rooftop terrace (sun all day). Very well connected to airport and train.",
  price: 174
)

listing = Listing.create!(
  user: user,
  image: "https://source.unsplash.com/random/250x258/?house",
  title: "Cityden Aparthotels | Studio XL",
  location: "Amstelveen, Netherlands",
  content: "Cityden Zuidas is a unique Aparthotel in Amsterdam, where guests can make the make the most of their stay.",
  price: 128
)

puts "We created #{Listing.count} listings, there should be 8"
