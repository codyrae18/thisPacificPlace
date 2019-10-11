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


manilaActivity1 = Activity.create(name: "Resorts World Manila (Casino)", description: "Resorts World Manila is an integrated resort, located in Newport City, opposite the Ninoy Aquino International Airport Terminal 3, in Pasay, Metro Manila, Philippines. The resort is owned and operated by Travellers International Hotel Group, Inc., a joint venture between Alliance Global Group and Genting Hong Kong.", city_id: "1")
manilaActivity2 = Activity.create(name: "Manila Ocean Park", description: "The Manila Ocean Park is an oceanarium in Manila, Philippines. It is owned by China Oceanis Philippines Inc., a subsidiary of China Oceanis Inc., a Singaporean-registered firm. It is located behind the Quirino Grandstand at Rizal Park", city_id: "1")

boracayActivity1 = Activity.create(name: "Boracay Island Hopping", description: "Boracay Island is the postcard star of the Philippines, blessed with white sand beaches, dreamy sunsets, and vibrant coral reefs. This half-day island hopping tour from Boracay checks off all the natural wonders and snorkeling hotspots of the surrounding islands, including Crystal Cove, Crocodile Island, West Cove, Puka Beach, Balinghai Beach, and Magic Island.
Read more about Boracay Island Hopping 2019", city_id: "2")
boracayActivity2 = Activity.create(name: "Boracay ATV Adventure", description: " Embark on an exciting ATV or Buggy Adventure Ride and feel the adrenaline rush!  Go through a forest trail with two stops, first stop is a scenic view overlooking a private beach, and the second stop is the private white-sand beach where you can relax, take pictures or take a quick dip.", city_id: "2")
boracayActivity3 = Activity.create(name: "Boracay Helicopter Tour", description: "Beach Tour (10-12 minutes)
2pax - PHP 5200/pax; 3pax - PHP 4500/pax
Island Tour (15-17 minutes)
2pax - PHP 7450/pax; 3pax - PHP 6750/pax
VIP Tour (20-22 minutes)
2pax - PHP 9200/pax; 3pax - PHP 8500/pax
Below 2 yrs old FOC; 2 - 12yrs half-price
", city_id: "2")
boracayActivity4 = Activity.create(name: "Boracay Submarine Adventure", description: "All markets except China & Korea - PHP 2100/pax
China & Korea market - PHP 4100/pax
Children 3 yrs old and below are FOC (1 child/adult), 4 yrs old and above full price
", city_id: "2")

palawanActivity1= Activity.create(name: "Nature & Parks", description: "The Puerto Princesa Subterranean River National Park is a protected area of the Philippines. The park is located in the Saint Paul Mountain Range on the western coast of the island of Palawan, about 80 kilometres north of the city centre of Puerto Princesa, and contains the Puerto Princesa Subterranean River.", city_id: "3")
palawanActivity2= Activity.create(name: "Outdoor Activities", description: "Full-Day Honda Bay Island Hopping. from $29.90*
Amazing Underground River Cruise and Ugong Rock Adventure from Puerto Princesa. from $62.00*
El Nido Island Hopping Tour D: Island Beaches. from $30.00*
An Island Hopping Tour in Honda bay. from $30.00", city_id: "3")
palawanActivity3= Activity.create(name: "Beaches", description: "Nacpan is El Nido’s most beautiful beach that captivates the heart of its visitors. It’s a serene tropical paradise perfect for escaping from the crowds.
Nacpan Beach is located about 45-minute drive away from El Nido town.
Sabang Beach, set along the dramatic, undeveloped coast of Palawan’s eastern shore, Sabang Beach is one of the island’s most famous beach, known for being the jumpoff point to the Underground River. Despite its popularity, however, it’s still a quiet place to spend a few days relaxing.
Seven Commandos Beach Seven Commandos Beach is a heaven on earth with pristine white sands, turquoise calm water, and lined with coconut trees. It’s ranked one of the best beaches in El Nido. It’s accessible only by boat and it’s generally last stop on the islands hopping tour.", city_id: "3")
palawanActivity4= Activity.create(name: "Waterfalls", description: "Estrella Falls

Estrella Falls is the place to go, especially for those who need a short break from their daily stressful routine. In 20 to 30 minutes from the town center, you can reach this falls in Barangay Estrella Village.

Narra’s iconic Estrella Falls was declared a hall of famer in the regional search for cleanest inland water body in 2002. And let me tell you, it never disappoints! Its inviting emerald waters are so irresistible that you’d want to take a dip once you get there.

Chancing upon a horde of monkeys is also an experience in itself. It’s tempting to give them food just to see them up close and personal. But that’s a no-no here. To keep you safe, the management discourages monkey feeding. Why not just appreciate them from afar, right? Here’s surely something you don’t want to miss – atop Estrella Falls are other waterfalls – 63 more! If you’ve got an overflowing sense of adventure, go ahead and take your exploration to the next level. Hire a well-trained mountain guide then start trekking earlier to catch them all in their awesome glory.

But here’s the catch: getting to the last falls – the grandest among all – would take you up to 4 days! So this means spending nights camping by the river. Interestingly, as you find yourself in the heart of the jungle you’ll get to spot rare animals like the Palawan wild boar, a host of different bird species, and many more.", city_id: "3")
palawanActivity5= Activity.create(name: "Caverns & Caves", description: "Due to its unique limestone karst rock base, Puerto Princesa is awash with stunning rock formations. With famous caves such as the world renowned Puerto Princesa Underground River and adventure focused Ugong Rock, caves in Puerto Princesa Palawan are everywhere. But we discovered some off-the-beaten-track caves as well that completely blew our minds. Read on to discover how all these caves in Palawan offer such unique experiences.", city_id: "3")

cebuActivity1= Activity.create(name: "Kawasan Falls", description: "he most popular destination from Badian is the Kawasan Falls, if you are staying right in Kawasan Falls please inform the resort the possible time of your arrival so they can send personnel to meet you at the arrival point. If you are taking a bus please inform the bus helper or the bus driver that you are going to Kawasan Falls, they know the place. Kawasan Falls is a 15 to 30 minutes walk from the national road. Note: As with all tourist attractions there will be pests offering a guide service which is totally not needed and they just irritate you anyway then ask for cash.

Kawasan Falls is a must see attraction while you’re in town, it’s a three-layered waterfall system located at Barangay Matutinao. The water is fresh and crystal clear. The magical landscape of Kawasan Falls is very cool and refreshing, an ideal paradise to anyone who loves and want to get intimate with nature. Enjoy the cold swim in the fresh, crystal clear spring water of Kawasan Falls.", city_id: "4")
cebuActivity2= Activity.create(name: "Pico Osmena", description: "Hiking Osmeña Peak on Cebu for sunrise was one of my favorite adventures during our time on the island. It is a 1-hour drive from the small town of Alegria on Cebu and is an amazing sunrise hike with a stunning backdrop of steep cliffs.

 

Wondering what Camera and Photography Gear I take all my photos with while traveling around the world?  Click Here to view my detailed guide about all of the gear I use and recommend for travel photography.

My travel insurance: One last thing before you get started! Have you got your travel insurance yet? You can Click Here to find out how I get the best deal on travel insurance, which insurance recommend using in Southeast Asia and why I never travel without it. *This blog post involves photos of my bike crash.

What to pack for the Philippines?: After four trips to the Philippines, there are some items you NEED to pack. You can Click Here to view my recommended Philippines Packing List.", city_id: "4")
cebuActivity3= Activity.create(name: "Cebu Helmet Diving", description: "Suit up for this wonderful experience underwater. Helmet Diving gives you the chance to walk underwater without getting your hair wet.
Dive into Shangri-La’s marine sanctuary and walk in the middle of fishes shoaling around you for 15 minutes.
If you wanna relive this experience, we can take care of capturing these precious moments as pictures for you.
If you want more of it, just add an additional fee for the extra 30 photos.", city_id: "5")

davaoActivity1= Activity.create(name: "Davao Philippine Eagle and Waling-waling Tour", description: "The Philippine Eagle and Waling-waling Tour is a 3-hr tour where man meets nature.  Two of Davao's majestic icon the King of the Philippine Birds and Queen of the Philippine Flowers will be the highlight of this tour.  Visit the Philippine Eagle's Conservatory and learn more about their habitat.  Walk thru an orchid farm where you will see the pride flower of Davao City.
The Philippine Eagle and Waling-waling tour is an educational tour of Davao's majestic icons.  Tour departs daily from any Davao City Hotel departure time of 9am and another trip at 1pm and concludes upon return to hotel.  The mode of transportation is car for 1-3 persons, a minivan for 4-7 persons and a commuter van for 8-10 persons. Travel time from downtown Davao City is about an hour per way.  Tour includes hotel pickup and drop-off, admission tickets with access to the Philippine Eagle's home and orchid farm.  This educational tour does not include a licensed Tour guide, meals and recreational activities within the destination sites.", city_id: "5")
davaoActivity2= Activity.create(name: "Davao Crocodile Park Tour", description: "Though the phobia of crocodiles has not been scientifically named yet, literature tells us that Captain Hook was one among the first who picked up this irrational fear. Leave crocophobia in Neverland and enjoy the company of these friendly reptiles.

Young and old folks will certainly enjoy Davao Crocodile Park’s spectacular shows, featuring none other than impressive but equally fearsome crocodiles. Brace yourself and take on a close encounter with these lovely creatures in the Crocodile Feeding and Crocodile Dancing shows. Be amazed with the skeletal display of these striking reptiles while you and your kids learn tidbits of facts at the The Wild Museum. Get to know more about their habitat and know how they interact with others in this educational trip.

Hoping to disseminate awareness on taking good care of crocodiles and the wildlife in general, the Davao Crocodile Park established to reach families in urban areas, who often times forget about the importance of having a balanced ecosystem. With this special offer, you and your family can get the chance to show how much you care for Mother Nature by learning how to build enduring relationships between people and wildlife.", city_id: "5")



bbq = Food.create(name: "Filipino BBQ", city_id: "1", image_url: "http://cdn.cnn.com/cnnnext/dam/assets/160419090104-taste-of-manila-max-fried-chicken.jpg")
crocodileSisig = Food.create(name: "Crocodile Sisig", city_id: "2", image_url: "https://palawantreasuresblog.files.wordpress.com/2016/11/6157246335_5e1b9b3fe0_b.jpg?w=900")
lechon = Food.create(name: "Lechon", city_id: "3", image_url: "http://fnbreport.ph/wp-content/uploads/2018/06/spicy-lechon.png")
pusit = Food.create(name: "Pusit", city_id: "4", image_url: "http://1.bp.blogspot.com/-Pnoqg6JF_YY/ThpZ-FodtlI/AAAAAAAABdA/VhfDAfd6EO8/s1600/inihaw+na+pusit.jpg")
dinugoan = Food.create(name: "Dinugoan", city_id: "5", image_url: "https://casaveneracion.com/wp-content/uploads/2012/09/dinuguan.jpg")


manilaActivityPhoto1 = Photo.create(name: "Resorts World Manila", image_url: "http://www.casinoarchives.com/wp-content/uploads/2017/09/13522670379n4KHqW4.jpg", activity_id: "1")
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
