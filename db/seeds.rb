# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Venue.count == 0
    Venue.create(name: "Ballistic Beer", email: "email@ballisticbeer.com", password: "123456", password_confirmation:"123456", mobile: "61411222333", website: "http://www.ballisticbeer.com", facebook: "http://facebook.com/ballisticbeer", description: "Top stuff", google_maps: "https://www.google.com/maps/place/Ballistic+Beer+Co/@-27.548333,153.0315574,15z/data=!4m5!3m4!1s0x0:0x6c36675c8fd00b00!8m2!3d-27.548333!4d153.0315574")
    Venue.create(name: "Helios Brewing", email: "email@helios.com", password: "123456", password_confirmation:"123456", mobile: "61411222334", website: "http://www.helios.com", facebook: "http://facebook.com/helios" ,description: "Top stuff", google_maps: "https://www.google.com/maps/place/Helios+Brewing+Company/@-27.5296816,153.0088927,17z/data=!3m1!4b1!4m5!3m4!1s0x6b91500bb76005f1:0x68017e7594fb0f9a!8m2!3d-27.5296816!4d153.0110814")
    Venue.create(name: "Archer Brewing", email: "email@archer.com", password: "123456", password_confirmation:"123456", mobile: "61411222334", website: "http://www.archer.com", facebook: "http://facebook.com/archer",description: "Top stuff", google_maps: "https://www.google.com/maps/place/Archer+Brewing+(future+location)/@-27.4362843,153.0153557,15z/data=!4m5!3m4!1s0x0:0x3d436a4dff761c40!8m2!3d-27.4362717!4d153.0152646")
end