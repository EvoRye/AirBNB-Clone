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


8.times do |index|
  Listing.create!(user: user, image: "https://source.unsplash.com/random/250x25#{index}/?house", title: "Nice house", location: "Amsterdam", content: "something nice", price: 100.50)
end

puts "We created #{Listing.count} listings, there should be 8"
