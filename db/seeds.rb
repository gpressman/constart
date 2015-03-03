# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




venues =Venue.create(name: "Union Transfer", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 1000, adult: false, user_id: 1)
venues =Venue.create(name: "Tower Theater", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 3300, adult: false, user_id: 2)
venues =Venue.create(name: "Electric Factory", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 2000, adult: false, user_id: 3)
venues =Venue.create(name: "Mann Center", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 7000, adult: false, user_id: 4)
venues =Venue.create(name: "TLA", manager_name: Faker::Name.name, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, city: "Philadelphia", capacity: 1200, adult: false, user_id: 5)
	 



