# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |user|

users= User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number )
end

venues =Venue.create(name: "Union Transfer", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 1000, adult: false, user_id: 1)
venues =Venue.create(name: "Tower Theater", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 3300, adult: false, user_id: 2)
venues =Venue.create(name: "Electric Factory", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 2000, adult: false, user_id: 3)
venues =Venue.create(name: "Mann Center", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 7000, adult: false, user_id: 4)
venues =Venue.create(name: "TLA", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 1200, adult: false, user_id: 5)
	 
request= Request.new(artist: "Deltron 3030", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Insane Clown Posse", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Modeselektor", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Lettuce", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "My Morning Jacket", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Jungle", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Zion I", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Run the Jewels", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Ghostland Observatory", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save


request= Request.new(artist: "Eoto", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Cut Copy", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Little People", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Electron", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "The New Deal", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Mr. Lif", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Shpongle", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Ratatat", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Squarepusher", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "A Tribe Called Quest", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Souls of Mischief", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Fashawn", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Solaris", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Purity Ring", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Kid Koala", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "RJD2", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "DJ Shadow", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "St. Vincent", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

request= Request.new(artist: "Flying Lotus", venue_id: 1, date: Faker::Date.forward(500), status: "sent", user_id: 6, goal: 500 )
request.artist_getsong()
request.artist_getimage()
request.save

