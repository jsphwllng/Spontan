# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'open-uri'

food = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598521127/food_isnu2d.jpg')
spiritual = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598521129/yoga_p096vn.jpg')
political = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598605916/frnvwzs3f90klalc1731wmbjjhu0.jpg')
# ????
sports = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598606008/rku4jcqqaigdp6yhi9vbfpsg231k.jpg')
culture = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598606107/8qltv4m98uib1dccfhw6wy09mzm0.jpg')
dancing = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598605354/i06pmd809y9jpqnk14881x49b1ji.jpg')
studying = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598521128/studying_rgcpnm.jpg')
party = URI.open('https://res.cloudinary.com/dbbmbbgju/image/upload/v1598521128/party_t5odfd.jpg')
food2 = URI.open('https://images.unsplash.com/photo-1458677677220-000ddaa037e3?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600')
spiritual2 = URI.open('https://images.unsplash.com/photo-1554244933-d876deb6b2ff?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600')
political2 = URI.open('https://images.unsplash.com/photo-1551921486-4be2f85f62ed?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600')
sports2 = URI.open('https://images.unsplash.com/photo-1573056020071-9697f575f8d6?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600')

Followship.destroy_all
Review.destroy_all
Participation.destroy_all
Event.destroy_all
User.destroy_all

score = (1..5).to_a

puts "now generating seeds..."
sleep 0.5

puts "now generating 4 users"
user_1 = User.new(email: "q@example.com", first_name: "Sarah", last_name: "Hunter", gender: "female", location: "Paul-Robson-Str. 1, 10439 Berlin", username: "new_in_town91", password: "123456")
user_2 = User.new(email: "x@example.com", first_name: "Bert", last_name: "Carlson", gender: "male", location: "Weserstr. 25, 12045 Berlin", username: "GretchenBerlin", password: "123456")
user_3 = User.new(email: "y@example.com", first_name: "Dino", last_name: "Wurst", gender: "male", location: "Brandeburger Tor", username: "dino_the_boss", password: "123456")
user_4 = User.new(email: "z@example.com", first_name: "Marian", last_name: "example", gender: "male", location: "Volkspark Wedding", username: "Metallica4Life", password: "123456")
user_1.save
puts "now saving #{user_1.id}"
user_2.save
puts "now saving #{user_2.id}"
user_3.save
puts "now saving #{user_3.id}"
user_4.save
puts "now saving #{user_4.id}"



puts "now generating 8 events (two per user, past and future)"
sleep 0.5

event_1 = Event.new(category: "food", description: "I love to cook and bake and as it is Friday today, I thought why not do it with some fun people who share my passion for yummy stuff! I have a slow cooker and put some delicious ribs in this morning. If you guys could bring some sidedishes or deserts, we should be all set for a feast! ", location: "Karl-Kunger-Str. 8", date: (DateTime.now + (score.sample).hours), user: user_1, title: "I've Got The Ribs, Let's Eat Together!")
event_2 = Event.new(category: "spiritual", description: "Ever since I lived in an Ashram in India for six month, my life as been transformed and I cannot imagine not doing yoga for hours on end on a daily basis in the outdoors. Let's meet to train our bodies and minds and find a spiritual connection with one another than will transcendent from the Now to the Was and to the Will-be.", location: "Pfaueninsel, 14109 Berlin", date: (DateTime.now + (score.sample).hours), user: user_2, title: "Transcendental Ashtanga Yoga for Free Spirits (Vegans only!)")
event_3 = Event.new(category: "political", description: "After a looooooong hiatus, Berghain is back, baby! If you are also one of the elustrous few who got a ticket this weekend, let's go together and party like it's 2019! (PS: bring your own gear!)", location: "Am Wriezener Bahnhof, 10243 Berlin", date: (DateTime.now + (score.sample).hours), user: user_3, title: "Berghain is Back!")
event_4 = Event.new(category: "sports", description: "I could really use some light physical activity and thought, how about a wee marathon this weekend. I usually finish in just under 4 hours so please no lame ducks. Meet at Friedrich-Ludwig-Jahn-Sportpark in front of the entrance", location: "Cantianstraße 24, 10437 Berlin", date: (DateTime.now + (score.sample).hours), user: user_4, title: "Quick Run for Real Dudes")

event_5 = Event.new(category: "culture", description: "Come join our group for a tour through the Pergamon Museum. Bring some time!", location: "Pergamon Museum, Hamburgerbanhof Berlin", date: (DateTime.now + (score.sample).hours), user: user_1, title: "The World Needs More Modern Art - Looking for Likeminded Connoisseurs")
event_6 = Event.new(category: "dancing", description: "We are a small group of enthusiastic salza dancers. Everyone is welcome! No prior knowledge required :)", location: "Volkspark Friedrichshain", date: (DateTime.now + (score.sample).hours), user: user_2, title: "Salza Dancing for Beginners")
event_7 = Event.new(category: "studying", description: "The semester is almost over and exams are just around the corner. I give free tips & tricks how to step up your learning process when it comes to studying for exams.", location: "Staatsbibliothek Berlin", date: (DateTime.now + (score.sample).hours), user: user_3, title: "Tips & Tricks for Successfull Studying")
event_8 = Event.new(category: "party", description: "Lets end the day with some pumping beats and some nice & cold beers, 18+ !", location: "Café Hasenschänke, 10965, Berlin", date: (DateTime.now + (score.sample).hours), user: user_4, title: "Beers & Beats at Hasenheide")

event_9 = Event.new(category: "food", description: "Poke Bowls are so delicious, let's have some together at Vietbowl in Neukoelln!", location: "Böhmische Str. 13, 12055 Berlin", date: "2020-08-22", user: user_1, title: "It's Poke Bowl Time!")
event_10 = Event.new(category: "spiritual", description: "Let's pray together for the children of the world who needlessly suffer because rich people and conglomerates are selfish and evil", location: "Karl-Liebknecht-Str. 8, 10178 Berlin", date: "2020-08-23", user: user_2, title: "Let us Pray for the Children at St. Marienkirche")
event_11 = Event.new(category: "political", description: "Never forget what happened in Hanau! We cannot let racism and fascism win. Let's show society that we will never forget and never accept such acts of terrorism!", location: "Alexanderplatz", date: "2020-08-24", user: user_3, title: "Never Forget!")
event_12 = Event.new(category: "sports", description: "Me and a friend would like to play some frisbee. We are easygoing guys and wouldn't mind going for a beer afterwards", location: "Tempelhofer Feld", date: "2020-08-25", user: user_4, title: "techno fitness")

event_1.photo.attach(io: food, filename: 'food.jpg', content_type: 'image/jpg')
puts "now addding a photo  #{event_1.id}"
event_2.photo.attach(io: spiritual, filename: 'spiritual.jpg', content_type: 'image/jpg')
puts "now addding a photo  #{event_2.id}"
event_3.photo.attach(io: political, filename: 'political.jpg', content_type: 'image/jpg')
puts "now addding a photo  #{event_3.id}"
event_4.photo.attach(io: sports, filename: 'sports.jpg', content_type: 'image/jpg')
puts "now addding a photo  #{event_4.id}"
event_5.photo.attach(io: culture, filename: 'culture.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_5.id}"
event_6.photo.attach(io: dancing, filename: 'dancing.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_6.id}"
event_7.photo.attach(io: studying, filename: 'studying.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_7.id}"
event_8.photo.attach(io: party, filename: 'party.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_8.id}"
event_9.photo.attach(io: food2, filename: 'food2.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_9.id}"
event_10.photo.attach(io: spiritual2, filename: 'spiritual2.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_10.id}"
event_11.photo.attach(io: political2, filename: 'political2.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_11.id}"
event_12.photo.attach(io: sports2, filename: 'sports2.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_12.id}"

event_1.save
puts "now saving future event #{event_1.id}"
event_2.save
puts "now saving future event #{event_2.id}"
event_3.save
puts "now saving future event #{event_3.id}"
event_4.save
puts "now saving future event #{event_4.id}"
event_5.save
puts "now saving past event #{event_5.id}"
event_6.save
puts "now saving past event #{event_6.id}"
event_7.save
puts "now saving past event #{event_7.id}"
event_8.save
puts "now saving past event #{event_8.id}"



puts "now generating 4 participations (one user per event)"
sleep 0.5
participation_1 = Participation.new(event: event_4, user: user_1)
participation_2 = Participation.new(event: event_5, user: user_2)
participation_3 = Participation.new(event: event_6, user: user_3)
participation_4 = Participation.new(event: event_7, user: user_4)

participation_1.save
puts "now saving #{participation_1.id}"
participation_2.save
puts "now saving #{participation_2.id}"
participation_3.save
puts "now saving #{participation_3.id}"
participation_4.save
puts "now saving #{participation_4.id}"



puts "now generating 4 reviews"
sleep 0.5
review_1 = Review.new(participation: participation_1, score: score.sample, review: "it was an event for sure")
review_2 = Review.new(participation: participation_2, score: score.sample, review: "it was an event for sure")
review_3 = Review.new(participation: participation_3, score: score.sample, review: "it was an event for sure")
review_4 = Review.new(participation: participation_4, score: score.sample, review: "it was an event for sure")

review_1.save
puts "now saving #{review_1.id}"
review_2.save
puts "now saving #{review_2.id}"
review_3.save
puts "now saving #{review_3.id}"
review_4.save
puts "now saving #{review_4.id}"



puts "now generating 4 followings"
sleep 0.5
followship_1 = Followship.new(follower: user_1, followee: user_1)
followship_2 = Followship.new(follower: user_2, followee: user_2)
followship_3 = Followship.new(follower: user_3, followee: user_3)
followship_4 = Followship.new(follower: user_4, followee: user_4)

followship_1.save
puts "now saving #{followship_1.id}"
followship_2.save
puts "now saving #{followship_2.id}"
followship_3.save
puts "now saving #{followship_3.id}"
followship_4.save
puts "now saving #{followship_4.id}"

