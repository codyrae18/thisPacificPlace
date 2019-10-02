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

manila = City.create(name: "Manila", location_id: '1', image_url:"https://static1.mansionglobal.com/production/media/article-images/346cc28dbd5a1250cb248c9b5196eb6c/large_GettyImages-1091070108.jpg")
boracay = City.create(name: "Boracay", location_id: '2', image_url:"https://a57.foxnews.com/media2.foxnews.com/BrightCove/694940094001/2019/01/21/931/524/694940094001_5992035448001_5992026762001-vs.jpg?ve=1&tl=1")
palawan = City.create(name: "Palawan", location_id: '2', image_url:"https://i1.wp.com/www.projectlupad.com/wp-content/uploads/2018/01/Spectacular-El-Nido-Palawan-Philippines-Aerial-View-Project-LUPAD.jpeg?fit=1740%2C1160&ssl=1+")
cebu = City.create(name: "Cebu", location_id: '2', image_url:"https://pix10.agoda.net/hotelImages/6532356/-1/8735241712040cf6b22c01cc035dc185.jpg?s=1024x768")
davao = City.create(name: "Davao", location_id: '3', image_url:"https://businessmirror.com.ph/wp-content/uploads/2018/03/Davao.jpg")


manilaActivity1 = Activity.create(name: "", description: "", city_id: "1")
manilaActivity2 = Activity.create(name: "", description: "", city_id: "1")

boracayActivity1 = Activity.create(name: "BORACAY ISLAND HOPPING", description: "write description right here", city_id: "2")
boracayActivity2 = Activity.create(name: "BORACAY ATV ADVENTURE", description: "write description right here", city_id: "2")
boracayActivity3 = Activity.create(name: "BORACAY HELICOPTER TOURS", description: "write description right here", city_id: "2")
boracayActivity4 = Activity.create(name: "BORACAY SUBMARINE ADVENTURE", description: "write description right here", city_id: "2")

palawanActivity1= Activity.create(name: "Nature & Parks", description: "write description right here", city_id: "3")
palawanActivity2= Activity.create(name: "Outdoor Activities", description: "write description right here", city_id: "3")
palawanActivity3= Activity.create(name: "Beaches", description: "write description right here", city_id: "3")
palawanActivity4= Activity.create(name: "Waterfalls", description: "write description right here", city_id: "3")
palawanActivity5= Activity.create(name: "Caverns & Caves", description: "write description right here", city_id: "3")

cebuActivity1= Activity.create(name: "Kawasan Falls", description: "write description right here", city_id: "4")
cebuActivity2= Activity.create(name: "Pico Osmena", description: "write description right here", city_id: "4")
cebuActivity3= Activity.create(name: "Cebu Helmet Diving", description: "write description right here", city_id: "5")

davaoActivity1= Activity.create(name: "Davao Philippine Eagle and Waling-waling Tour", description: "write description right here", city_id: "5")
davaoActivity2= Activity.create(name: "Davao Crocodile Park Tour", description: "write description right here", city_id: "5")



bbq = Food.create(name: "bbq", city_id: "1", image_url: "http://cdn.cnn.com/cnnnext/dam/assets/160419090104-taste-of-manila-max-fried-chicken.jpg")
crocodileSisig = Food.create(name: "Crocodile Sisig", city_id: "2", image_url: "https://palawantreasuresblog.files.wordpress.com/2016/11/6157246335_5e1b9b3fe0_b.jpg?w=900")
lechon = Food.create(name: "lechon", city_id: "3", image_url: "http://fnbreport.ph/wp-content/uploads/2018/06/spicy-lechon.png")
pusit = Food.create(name: "pusit", city_id: "4", image_url: "http://1.bp.blogspot.com/-Pnoqg6JF_YY/ThpZ-FodtlI/AAAAAAAABdA/VhfDAfd6EO8/s1600/inihaw+na+pusit.jpg")
dinugoan = Food.create(name: "dinugoan", city_id: "5", image_url: "https://casaveneracion.com/wp-content/uploads/2012/09/dinuguan.jpg")


# bbqPhoto = Photo.create(name: "BBQ", image_url: "")
# crocodileSisigPhoto = Photo.create(name: "Crocodile Sisig", image_url: "") 
# lechonPhoto = Photo.create(name: "Lechon", image_url: "")
# pusitPhoto =  Photo.create(name: "Pusit", image_url: "")
# dinugoanPhoto =  Photo.create(name: "Dinugoan", image_url: "")

# manilaPhoto =  Photo.create(name: "Manila", image_url: " ")
# boracayPhoto = Photo.create(name: "Boracay", image_url: "https://a57.foxnews.com/media2.foxnews.com/BrightCove/694940094001/2019/01/21/931/524/694940094001_5992035448001_5992026762001-vs.jpg?ve=1&tl=1")
# cebuPhoto =  Photo.create(name: "Cebu", image_url: "https://pix10.agoda.net/hotelImages/6532356/-1/8735241712040cf6b22c01cc035dc185.jpg?s=1024x768")
# palawanPhoto = Photo.create(name: "Palawan", image_url: "https://i1.wp.com/www.projectlupad.com/wp-content/uploads/2018/01/Spectacular-El-Nido-Palawan-Philippines-Aerial-View-Project-LUPAD.jpeg?fit=1740%2C1160&ssl=1+")
# davaoPhoto = Photo.create(name: "Davao", image_url: "https://businessmirror.com.ph/wp-content/uploads/2018/03/Davao.jpg")

manilaActivityPhoto1 = Photo.create(name: "Resorts World Manila", image_url: "https://www.rwmanila.com/sites/default/files/rw-lg.jpg", activity_id: "1")
manilaActivityPhoto2 = Photo.create(name: "Manila Ocean Park", image_url: "https://www.shoreexcursions.asia/wp-content/uploads/2017/06/Manila-Ocean-Park-1.jpg", activity_id: "2")


boracayActivityPhoto1 = Photo.create(name: "BORACAY ISLAND HOPPING", image_url: "https://www.viajeroyale.com/wp-content/uploads/2018/11/island-hopping-boracay-boat-2.jpg", activity_id: "3")
boracayActivityPhoto2 = Photo.create(name: "BORACAY ATV ADVENTURE", image_url: "https://steemitimages.com/640x0/https://cdn.steemitimages.com/DQmNgtZoBmM6a4xbu1Y56sSy2z6aCNasZNYqJMDiuDvpucm/FB_IMG_1523357725361.jpg", activity_id: "4")
boracayActivityPhoto3 = Photo.create(name: "BORACAY HELICOPTER TOURS", image_url: "https://www.boracayhelicopters.com/public/frontend/images/banner.png", activity_id: "5")
boracayActivityPhoto4 = Photo.create(name: "BORACAY SUBMARINE ADVENTURE", image_url: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6f/00/94.jpg?fit=crop&w=320&h=140", activity_id: "6")


palawanActivityPhoto1 = Photo.create(name: "Nature & Parks", image_url: "http://travelercorner.com/wp-content/uploads/2016/10/Coron-Destinations-Palawan.jpg", activity_id: "7")
palawanActivityPhoto2 = Photo.create(name: "Outdoor Activities", image_url: "https://www.toponmylist.com/wp-content/uploads/2015/04/1-windsurfing-palawan-006.jpg", activity_id: "8")
palawanActivityPhoto3 = Photo.create(name: "Beaches", image_url: "https://i.pinimg.com/originals/b8/cc/e7/b8cce789a03ae0a450930076e5a1e106.jpg", activity_id: "9")
palawanActivityPhoto4 = Photo.create(name: "Waterfalls", image_url: "https://i2.wp.com/wheninmyjourneys.com/wp-content/uploads/2018/05/Palawan-Kapangyan-Falls2.jpg?fit=2048%2C1365&ssl=1", activity_id: "10")
palawanActivityPhoto5 = Photo.create(name: "Caverns & Caves", image_url: "https://c8.alamy.com/comp/M0Y823/going-into-the-underground-river-cave-in-palawan-philippines-M0Y823.jpg", activity_id: "11")

cebuActivityPhoto1 = Photo.create(name: "Kawasan Falls", image_url: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6f/3f/0b.jpg", activity_id: "12")
cebuActivityPhoto2 = Photo.create(name: "Pico Osmena", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl1DMT7Nm6750gPgupHFIRE8OxCdstmTU8GJBDbdbQFDKELOaX", activity_id: "13")
cebuActivityPhoto3 = Photo.create(name: "Cebu Helmet Diving", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSicTgEiW71i7jlq5egoNz4wCZbQYueiq70qRD-OL5B3gpNgYAX3Q", activity_id: "14")

davaoActivityPhoto1 = Photo.create(name: "Davao Philippine Eagle and Waling-waling Tour", image_url: "https://www.travelertips.org/wp-content/uploads/2016/04/eagle-philippine.jpg", activity_id: "15")
davaoActivityPhoto2 = Photo.create(name: "Davao Crocodile Park Tour", image_url: "http://2.bp.blogspot.com/-D2k8oZrlhks/TgV5PKFFWlI/AAAAAAAABI4/Ph-2ejlXyfQ/s1600/Crocodile+Farming%252C+Maa%252C+Davao+City.jpg", activity_id: "16")


