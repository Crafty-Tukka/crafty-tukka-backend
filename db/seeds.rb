# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Venue.count == 0
    Venue.create(name: "Ballistic Beer", email: "email@ballisticbeer.com", password: "123456", password_confirmation:"123456", mobile: "61411222333", website: "http://www.ballisticbeer.com", facebook: "http://facebook.com/ballisticbeer", description: "Top stuff", google_maps: "https://www.google.com/maps/place/Ballistic+Beer+Co/@-27.548333,153.0315574,15z/data=!4m5!3m4!1s0x0:0x6c36675c8fd00b00!8m2!3d-27.548333!4d153.0315574", address: "Ballistic Beer Co, McCarthy Road, Salisbury QLD, Australia")
    Venue.create(name: "Helios Brewing", email: "email@helios.com", password: "123456", password_confirmation:"123456", mobile: "61411222334", website: "http://www.helios.com", facebook: "http://facebook.com/helios" ,description: "Top stuff", google_maps: "https://www.google.com/maps/place/Helios+Brewing+Company/@-27.5296816,153.0088927,17z/data=!3m1!4b1!4m5!3m4!1s0x6b91500bb76005f1:0x68017e7594fb0f9a!8m2!3d-27.5296816!4d153.0110814", address: "Helios Brewing Company, Palomar Road, Yeerongpilly QLD, Australia")
    Venue.create(name: "Archer Brewing", email: "email@archer.com", password: "123456", password_confirmation:"123456", mobile: "61411222334", website: "http://www.archer.com", facebook: "http://facebook.com/archer",description: "Top stuff", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646", address: "Archer Brewing (future location), Newmarket Road, Wilston QLD, Australia")
end

if Truck.count == 0
    Truck.create(name: "MooFree Burgers", email: "footruck@moofreeburgers.com.au", password: "123456", password_confirmation:"123456", mobile: "61478686440", website: "https://moofreeburgers.com.au/", facebook: "https://www.facebook.com/moofreeburgers/", description: "Dreaming of a big fat juicy cheese burger but against animal cruelty?  Charlies Brothers were too, and so set about to bring a change to the world starting here in Brisbane. No Cows involved from start to finish, less harm to the environment and so MooFree Burgers was born.", google_maps: "https://www.google.com/maps/place/Ballistic+Beer+Co/@-27.548333,153.0315574,15z/data=!4m5!3m4!1s0x0:0x6c36675c8fd00b00!8m2!3d-27.548333!4d153.0315574", category: "Burgers")
    Truck.create(name: "Hot Dog City", email: "hotdogs@gmail.com", password: "123456", password_confirmation:"123456", mobile: "61422333445", website: "www.hotdogs.com", facebook: "https://www.facebook.com/hotdogs" ,description: "Room temperature hotdogs to die for", google_maps: "https://www.google.com/maps/place/Helios+Brewing+Company/@-27.5296816,153.0088927,17z/data=!3m1!4b1!4m5!3m4!1s0x6b91500bb76005f1:0x68017e7594fb0f9a!8m2!3d-27.5296816!4d153.0110814", category: "Hotdogs")
    Truck.create(name: "Bob's Burgers", email: "burgers@gmail.com", password: "123456", password_confirmation:"123456", mobile: "61422333446", website: "www.burgers.com", facebook: "https://www.facebook.com/burgers",description: "Succulent bespoke deconstructed burgers", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646", category: "Burgers")
end

if Event.count == 0
    Event.create(name: "Burger Night", description: "Come down for some moo free burgers and some local ales.", start: Time.local(2022, 8, 9, 17, 00), finish: Time.local(2022, 8, 9, 20, 00), truck_id: 1, venue_id: 1, confirmed: true)
    Event.create(name: "Hot dogs and hot rods", description: "Bring your hot rod down and enjoy some hot dogs and cold brewskies", start: Time.local(2022, 8, 9, 15, 00), finish: Time.local(2022, 8, 9, 22, 00), truck_id: 2, venue_id: 2, confirmed: true)
    Event.create(name: "Burger Night", description: "Come bash a burger and crush an ale", start: Time.local(2022, 8, 9, 18, 00), finish: Time.local(2022, 8, 9, 21, 30), truck_id: 3, venue_id: 3, confirmed: true)
end

if Position.count == 0
    Position.create(lat: -27.548333, lng: 153.0315574, venue_id: 1)
    Position.create(lat: -27.5296816, lng: 153.0088927, venue_id: 2)
    Position.create(lat: -27.4362843, lng: 153.0153557, venue_id: 3)
end