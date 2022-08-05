# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Venue.count == 0
    v1 = Venue.create(name: "Ballistic Beer", email: "email@ballisticbeer.com", lat: -27.548333, lng: 153.0315574, password: "123456", password_confirmation:"123456", mobile: "61411222333", website: "http://www.ballisticbeer.com", facebook: "http://facebook.com/ballisticbeer", description: "Top stuff Top stuff Top stuff Top stuff", google_maps: "https://www.google.com/maps/place/Ballistic+Beer+Co/@-27.548333,153.0315574,15z/data=!4m5!3m4!1s0x0:0x6c36675c8fd00b00!8m2!3d-27.548333!4d153.0315574", address: "Ballistic Beer Co, McCarthy Road, Salisbury QLD, Australia")
    v2 = Venue.create(name: "Helios Brewing", email: "email@helios.com", lat: -27.5296816, lng: 153.0088927, password: "123456", password_confirmation:"123456", mobile: "61411222334", website: "http://www.helios.com", facebook: "http://facebook.com/helios", description: "Top stuff Top stuff Top stuff Top stuff Top stuff", google_maps: "https://www.google.com/maps/place/Helios+Brewing+Company/@-27.5296816,153.0088927,17z/data=!3m1!4b1!4m5!3m4!1s0x6b91500bb76005f1:0x68017e7594fb0f9a!8m2!3d-27.5296816!4d153.0110814", address: "Helios Brewing Company, Palomar Road, Yeerongpilly QLD, Australia")
    v3 = Venue.create(name: "Archer Brewing", email: "email@archer.com", lat: -27.4362843, lng: 153.0153557, password: "123456", password_confirmation:"123456", mobile: "61411222335", website: "http://www.archer.com", facebook: "http://facebook.com/archer", description: "Top stuff Top stuff Top stuff Top stuff Food Stuff", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646", address: "Archer Brewing (future location), Newmarket Road, Wilston QLD, Australia")
    v4 = Venue.create(name: "Black Hops Brewing", email: "email@blackhops.com", lat: -27.479790729168744, lng: 153.0424013288352, password: "123456", password_confirmation:"123456", mobile: "61411222336", website: "https://blackhops.com.au/taprooms", facebook: "http://facebook.com/archer", description: "Top stuff Top stuff Top stuff Top stuff Food Stuff2", google_maps: "https://www.google.com/maps/place/Black+Hops+Brisbane/@-27.4799573,153.0423906,17z/data=!4m13!1m7!3m6!1s0x6b915a3cec248e33:0x82c55075afb5c368!2sUnit+2%2F65+Manilla+St,+East+Brisbane+QLD+4169!3b1!8m2!3d-27.4799573!4d153.0423906!3m4!1s0x6b915a3cee6508ed:0xf6eed001b0fa549e!8m2!3d-27.4801867!4d153.0423161", address: "2/65 Manilla St, East Brisbane QLD 4169")
    v5 = Venue.create(name: "Bacchus Brewing Co", email: "email@bacchus.com", lat: -27.530608759220073, lng: 153.20463636931848, password: "123456", password_confirmation:"123456", mobile: "61411222337", website: "http://www.arche.com", facebook: "http://facebook.com/arche", description: "Top stuff Top stuff Top stuff Top stuff Food Stuff3", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646", address: "1/2 Christine Pl, Capalaba QLD 4157")
    v6 = Venue.create(name: "Aether Brewing", email: "email@aether.com", lat: -27.393144732870333, lng: 153.07085898393913, password: "123456", password_confirmation:"123456", mobile: "61411222338", website: "http://www.arch.com", facebook: "http://facebook.com/arch", description: "Top stuff Top stuff Top stuff Top stuff Food Stuff4", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646", address: "340 Melton Rd, Northgate QLD 4013")
    v1.picture.attach(io: File.open(Rails.root.join('app/assets/images/ballistic.png')),
    filename: 'ballistic.png')
    v2.picture.attach(io: File.open(Rails.root.join('app/assets/images/helios.jpg')),
    filename: 'helios.jpg')
    v3.picture.attach(io: File.open(Rails.root.join('app/assets/images/archer.png')),
    filename: 'archer.png')
    v4.picture.attach(io: File.open(Rails.root.join('app/assets/images/black-hops.png')),
    filename: 'black-hops.png')
    v5.picture.attach(io: File.open(Rails.root.join('app/assets/images/bacchus.png')),
    filename: 'bacchus.png')
    v6.picture.attach(io: File.open(Rails.root.join('app/assets/images/aether.png')),
    filename: 'aether.png')
end

if Truck.count == 0
    t1 = Truck.create(name: "MooFree Burgers", email: "footruck@moofreeburgers.com.au", password: "123456", password_confirmation:"123456", mobile: "61478686440", website: "https://moofreeburgers.com.au/", facebook: "https://www.facebook.com/moofreeburgers/", description: "Dreaming of a big fat juicy cheese burger but against animal cruelty?  Charlies Brothers were too, and so set about to bring a change to the world starting here in Brisbane. No Cows involved from start to finish, less harm to the environment and so MooFree Burgers was born.", google_maps: "https://www.google.com/maps/place/Ballistic+Beer+Co/@-27.548333,153.0315574,15z/data=!4m5!3m4!1s0x0:0x6c36675c8fd00b00!8m2!3d-27.548333!4d153.0315574", category: "Burgers")
    t2 = Truck.create(name: "Hot Dog City", email: "hotdogs@gmail.com", password: "123456", password_confirmation:"123456", mobile: "61422333445", website: "www.hotdogs.com", facebook: "https://www.facebook.com/hotdogs" ,description: "Room temperature hotdogs to die for", google_maps: "https://www.google.com/maps/place/Helios+Brewing+Company/@-27.5296816,153.0088927,17z/data=!3m1!4b1!4m5!3m4!1s0x6b91500bb76005f1:0x68017e7594fb0f9a!8m2!3d-27.5296816!4d153.0110814", category: "Hotdogs")
    t3 = Truck.create(name: "Bob's Burgers", email: "burgers@gmail.com", password: "123456", password_confirmation:"123456", mobile: "61422333446", website: "www.burgers.com", facebook: "https://www.facebook.com/burgers",description: "Succulent bespoke deconstructed burgers", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646", category: "Burgers")
    t1.picture.attach(io: File.open(Rails.root.join('app/assets/images/13.jpg')),
    filename: '13.jpg')
    t2.picture.attach(io: File.open(Rails.root.join('app/assets/images/14.jpg')),
    filename: '14.jpg')
    t3.picture.attach(io: File.open(Rails.root.join('app/assets/images/15.jpg')),
    filename: '15.jpg')
end

if Event.count == 0
    Event.create(name: "Burger Night", description: "Come down for some moo free burgers and some local ales.", date: Time.strptime('08/10/2022 00:00', '%m/%d/%Y %H:%M'), start_time: Time.strptime('08/10/2022 01:00', '%m/%d/%Y %H:%M'), finish_time: Time.strptime('08/10/2022 02:00', '%m/%d/%Y %H:%M'), truck_id: 1, venue_id: 1, confirmed: true)
    Event.create(name: "Hot dogs and hot rods", description: "Bring your hot rod down and enjoy some hot dogs and cold brewskies", date: Time.strptime('08/10/2022 00:00', '%m/%d/%Y %H:%M'), start_time: Time.strptime('08/10/2022 03:00', '%m/%d/%Y %H:%M'), finish_time: Time.strptime('08/10/2022 04:00', '%m/%d/%Y %H:%M'), truck_id: 2, venue_id: 2, confirmed: true)
    Event.create(name: "Burger Night 3", description: "Come bash a burger and crush an ale!", date: Time.strptime('08/10/2022 00:00', '%m/%d/%Y %H:%M'), start_time: Time.strptime('08/10/2022 05:00', '%m/%d/%Y %H:%M'), finish_time: Time.strptime('08/10/2022 06:00', '%m/%d/%Y %H:%M'), truck_id: 3, venue_id: 3, confirmed: true)
    Event.create(name: "Burger Night 2", description: "Come bash a burger and crush an ale!!", date: Time.strptime('08/13/2022 00:00', '%m/%d/%Y %H:%M'), start_time: Time.strptime('08/13/2022 05:00', '%m/%d/%Y %H:%M'), finish_time: Time.strptime('08/13/2022 06:00', '%m/%d/%Y %H:%M'), truck_id: 3, venue_id: 4, confirmed: true)
    Event.create(name: "Hot dogs and hot rods 2", description: "Bring your hot rod down and enjoy some hot dogs and cold brewskies!!!", date: Time.strptime('08/14/2022 00:00', '%m/%d/%Y %H:%M'), start_time: Time.strptime('08/14/2022 03:00', '%m/%d/%Y %H:%M'), finish_time: Time.strptime('08/14/2022 04:00', '%m/%d/%Y %H:%M'), truck_id: 2, venue_id: 5, confirmed: true)
    Event.create(name: "Hot dogs and hot rods 3", description: "Bring your hot rod down and enjoy some hot dogs and cold brewskies!!!!", date: Time.strptime('08/15/2022 00:00', '%m/%d/%Y %H:%M'), start_time: Time.strptime('08/15/2022 03:00', '%m/%d/%Y %H:%M'), finish_time: Time.strptime('08/15/2022 04:00', '%m/%d/%Y %H:%M'), truck_id: 1, venue_id: 6, confirmed: true)
end


# if Position.count == 0
#     Position.create(lat: -27.548333, lng: 153.0315574, venue_id: 1)
#     Position.create(lat: -27.5296816, lng: 153.0088927, venue_id: 2)
#     Position.create(lat: -27.4362843, lng: 153.0153557, venue_id: 3)
# end