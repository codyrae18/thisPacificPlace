# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

luzon = Location.create(name: "Luzon")
visayas = Location.create(name: "Visayas")
mindanao = Location.create(name: "Mindanao")

manila = City.create(name: "Manila", location_id: '1')
baguio = City.create(name: "Baguio", location_id: '1')
banaue = City.create(name: "Banaue", location_id: '1')
legazpi = City.create(name: "Legazpi", location_id: '1')

bohol = City.create(name: "Bohol", location_id: '2')
puertoprincesa = City.create(name: "Puerto Princesa", location_id: '2')
cebu = City.create(name: "Cebu", location_id: '2')
boracay = City.create(name: "Boracay", location_id: '2')

hinatuan = City.create(name: "Hinatuan", location_id: '3')
davao = City.create(name: "Davao", location_id: '3')

