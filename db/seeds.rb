# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'open-uri'
require 'faker'

food = URI.open('https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

spiritual = URI.open('https://images.unsplash.com/photo-1562960364-f47d48567cf0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80')

political = URI.open('https://images.unsplash.com/photo-1535903021127-d50417eae4a3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
# ?????
sports = URI.open('https://images.unsplash.com/photo-1521537634581-0dced2fee2ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')

culture = URI.open('https://images.unsplash.com/photo-1592834358188-8410454ad544?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80')

# dancing = URI.open('https://images.unsplash.com/photo-1531747056595-07f6cbbe10ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')

# dancing2 = URI.open('https://images.unsplash.com/photo-1587922342650-955e9760d689?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1250&q=80')

dancing = URI.open('https://images.unsplash.com/photo-1498761560229-39e74b243558?ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80')

studying = URI.open('https://images.unsplash.com/photo-1517673132405-a56a62b18caf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1356&q=80')

party = URI.open('https://images.unsplash.com/photo-1502872364588-894d7d6ddfab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')

food2 = URI.open('https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80')

spiritual2 = URI.open('https://images.unsplash.com/photo-1554244933-d876deb6b2ff?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600')

political2 = URI.open('https://images.unsplash.com/photo-1551921486-4be2f85f62ed?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600')

sports2 = URI.open('https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

doko_13 = URI.open('https://images.unsplash.com/photo-1584095508160-ec13047df8bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')

betrayal_14 = URI.open('https://images.unsplash.com/photo-1543886502-1286a5920ad0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

knit_15 = URI.open('https://images.unsplash.com/photo-1586804939649-db72258affe2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80')

noten_16 = URI.open('https://images.unsplash.com/photo-1554415140-5860173d7cdc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

nordic_17 = URI.open('https://images.unsplash.com/photo-1566725552191-cc46b03fbfc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80')

volleybal_18 = URI.open('https://images.unsplash.com/photo-1562920618-af1f5f02f0be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80')

fussball_19 = URI.open('https://images.unsplash.com/photo-1551112571-25b4cfa24f74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80')

aperol_20 = URI.open('https://images.unsplash.com/photo-1585386116149-22ad0453f631?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

manicure_21 = URI.open('https://images.unsplash.com/photo-1482101711228-1d205746bb02?ixlib=rb-1.2.1&auto=format&fit=crop&w=2684&q=80')

hugs_25 = URI.open('https://images.unsplash.com/photo-1525610396350-580c98513a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

hugs_22 = URI.open('https://images.unsplash.com/photo-1561626389-f5ac41fc2274?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

cake_23 = URI.open('https://images.unsplash.com/photo-1578985545062-69928b1d9587?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2180&q=80')


pasta_24 = URI.open('https://images.unsplash.com/photo-1591651998857-a9ca0e40c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2408&q=80')

Message.destroy_all
puts "goodbye message"
Chatroom.destroy_all
puts "goodbye chatrooms"
Followship.destroy_all
puts "goodbye followships"
Review.destroy_all
puts "goodbye reviews"
Participation.destroy_all
puts "goodbye participations"
Event.destroy_all
puts "goodbye events"
User.destroy_all
"seeya users!"

score = (3..5).to_a

puts "now generating seeds..."

puts "now generating users"
user_1 = User.new(email: "q@example.com", first_name: "Sarah", last_name: "Hunter", gender: "female", location: "Paul-Robson-Str. 1, 10439 Berlin", username: "new_in_town91", password: "123456")
user_2 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "male", location: "berlin", password: "123456")
user_3 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "female", location: "berlin", password: "123456")
user_4 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "male", location: "berlin", password: "123456")
user_5 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "female", location: "berlin", password: "123456")

user_6 = User.new(email: "joseph@example.com" , username: "kingJames", first_name: "Joseph" , last_name: "Welling The Boss" , gender: "male", location: "berlin", password: "123456")

user_7 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "female", location: "berlin", password: "123456")
user_8 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "male", location: "berlin", password: "123456")
user_9 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "female", location: "berlin", password: "123456")
user_10 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "male", location: "berlin", password: "123456")
user_11 = User.new(email: Faker::Internet.email , username: Faker::Internet.username, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , gender: "female", location: "berlin", password: "123456")

users = [user_1, user_2, user_3, user_4, user_5, user_7, user_8, user_9, user_10, user_11]

users.each do |user|
	user.photo.attach(io: URI.open("https://source.unsplash.com/500x500/?person"), filename: user.username, content_type: 'image/jpg')
	user.save
	puts "user #{user.id}, #{user.username} saved :)"
end

user_6.photo.attach(io: URI.open("https://i.imgur.com/eOv5PuC.jpg"), filename: "JOE", content_type: 'image/jpg')
user_6.save
puts "YOU saved :)"

puts "now generating 25 events (past and future)"
sleep 0.5

event_1 = Event.new(category: "food", description: "I love to cook and bake and as it is Friday today, I thought why not do it with some fun people who share my passion for yummy stuff! I have a slow cooker and put some delicious ribs in this morning. If you guys could bring some sidedishes or deserts, we should be all set for a feast! ", location: "Karl-Kunger-Str. 8", date: (DateTime.now + (score.sample + 2).hours), user: user_1, title: "Let's Eat Ribs!")

event_2 = Event.new(category: "spiritual", description: "Ever since I lived in an Ashram in India for six month, my life as been transformed and I cannot imagine not doing yoga for hours on end on a daily basis in the outdoors. Let's meet to train our bodies and minds and find a spiritual connection with one another than will transcendent from the Now to the Was and to the Will-be.", location: "Pfaueninsel", date: (DateTime.now + (14).hours), user: user_2, title: "Transcendental Yoga")
event_3 = Event.new(category: "political", description: "After a looooooong hiatus, Berghain is back, baby! If you are also one of the elustrous few who got a ticket this weekend, let's go together and party like it's 2019! (PS: bring your own gear!)", location: "Berghain", date: (DateTime.now + (score.sample + 2).hours), user: user_3, title: "Berghain is Back!")
event_4 = Event.new(category: "sports", description: "As we all know, badminton is the best game ever, though I could also be persuaded to play some squash, let's hit the gym this weekend and see who is boss!", location: "Cantianstraße 24", date: (DateTime.now + (score.sample + 2).hours), user: user_4, title: "It's badminton time!")

event_5 = Event.new(category: "culture", description: "Come join our group for a tour through Alte Nationalgalerie. Bring some time!", location: "Unter den Linden 1", date: (DateTime.now + (score.sample).hours), user: user_1, title: "Arty chat and viewing")
event_6 = Event.new(category: "dancing", description: "We are a small group of enthusiastic salza dancers. Everyone is welcome! No prior knowledge required :)", location: "Volkspark Wedding", date: (DateTime.now + (score.sample + 2).hours), user: user_2, title: "Salsa Dancing")
event_7 = Event.new(category: "studying", description: "The semester is almost over and exams are just around the corner. I give free tips & tricks how to step up your learning process when it comes to studying for exams.", location: "Staatsbibliothek Berlin", date: (DateTime.now + (score.sample + 2).hours), user: user_3, title: "Studying tips")
event_8 = Event.new(category: "party", description: "Lets end the day with some pumping beats and some nice & cold beers, 18+ !", location: "Café Hasenschänke", date: (DateTime.now + (score.sample + 2).hours), user: user_4, title: "Beers & Beats")

event_9 = Event.new(category: "food", description: "Poke Bowls are so delicious, let's have some together at Vietbowl in Neukoelln!", location: "Böhmische Str. 13, 12055 Berlin", date: "2020-08-22", user: user_11, title: "It's Poke Bowl Time!")
event_10 = Event.new(category: "spiritual", description: "Let's pray together for the children of the world who needlessly suffer because rich people and conglomerates are selfish and evil", location: "Karl-Liebknecht-Str. 8, 10178 Berlin", date: "2020-08-23", user: user_6, title: "Let us Pray for the Children at St. Marienkirche")
event_11 = Event.new(category: "political", description: "Never forget what happened in Hanau! We cannot let racism and fascism win. Let's show society that we will never forget and never accept such acts of terrorism!", location: "Alexanderplatz", date: "2020-08-24", user: user_6, title: "Never Forget!")
event_12 = Event.new(category: "sports", description: "Me and a friend would like to play some frisbee. We are easygoing guys and wouldn't mind going for a beer afterwards", location: "Tempelhofer Feld", date: "2020-08-25", user: user_6, title: "techno fitness")

event_13 = Event.new(category: "party", description: "Let's plat Doppelkopf at Laidak, preferably without 9s though!", location: "Boddinstr. 8", date: (DateTime.now + (score.sample + 2).hours), user: user_5, title: "Doppelkopf!")

event_14 = Event.new(category: "party", description: "Betrayal on the House of the Hill is probably the best game ever invented. If you like strategy/group games this is perfect for you! Let's play!", location: "Hermannplatz", date: (DateTime.now + (score.sample + 2).hours), user: user_3, title: "Let's play Betrayal!")

event_15 = Event.new(category: "misc", description: "I love how to knit and am looking for likeminded people or those who would like to learn how to knit. Winter is comimg and I think we could all use some warm woolen socks soon :) ", location: "Checkpoint Charlie", date: (DateTime.now + (score.sample + 2).hours), user: user_5, title: "Let's knit socks")

event_16 = Event.new(category: "misc", description: "I'd like to learn how to read music and thought maybe you'd like to as well? Or maybe you are an experienced musician looking to pass on your wisdom - either would be swell! I am not a complete beginnder but would definitely benefit from an exchange of experiences ", location: "Motzstr. 30", date: (DateTime.now + (score.sample + 2).hours), user: user_1, title: "Reading music")

event_17 = Event.new(category: "sports", description: "Corona made me fat and I'd really like to walk the extra weight off. But it's always easier to stay motivated if I do thinks in a group so here is me hoping you feel the same way.", location: "Bouchéstr. 3", date: (DateTime.now + (score.sample + 2).hours), user: user_7, title: "Nordic Walking")

event_18 = Event.new(category: "sports", description: "The weather is great, let's play some beach volleyball at Wannsee tonight!", location: "Wannsee", date: "2020-08-28", user: user_6, title: "Volleyball")

event_19 = Event.new(category: "drinking", description: "Nemo is my favorite bar and I am looking for some fun people to drink beer with. I also wouldn't mind a few rounds of fussball (Kicker!)", location: "Oderbergerstr. 25", date: (DateTime.now + (score.sample).hours), user: user_11, title: "Beers + Kicker")

event_20 = Event.new(category: "drinking", description: "I am looking for a group of nice people to enjoy a few drinks with tonight. My favorite bar makes the best Aperol Spritz and Turbomate in Berlin! Come join me, let's drink and me merry!", location: "Rodenbergstr. 8", date: (DateTime.now + (score.sample).hours), user: user_8, title: "Aperol & Turbomate")

event_21 = Event.new(category: "social", description: "I love getting manicures and would love to make a little event out of it, so I thought we would get a drink at a nearby bar and go for manicures after a few cocktails :)", location: "Rosenthaler Platz", date: (DateTime.now + (score.sample).hours), user: user_4, title: "Manicures 'n drinks")

event_22 = Event.new(category: "social", description: "We all need more love and affection in our lives so how about a biiiig group hugging session so share and spread the love! We will obviously wear masks and not get unreasonably touchy.", location: "Mauerpark", date: (DateTime.now + (score.sample).hours), user: user_9, title: "Group hugs!")

event_23 = Event.new(category: "food", description: "I loooooove baking and would like to try a new recipe with you guys! I thought about making a nougat ganache torte with a pistachio buttercream finish. Obviously we will have some coffee and and eat the whole thing afterwards!", location: "Hausvogteiplatz", date: (DateTime.now + (score.sample).hours), user: user_10, title: "Baking in Berlin")

event_24 = Event.new(category: "food", description: "I am originally from Italy and love to make my own pasta. My nonna has the best recipe and I am willing to share it with you :)", location: "Luisenstr. 10", date: "2020-08-30", user: user_8, title: "Fusili in da house")


event_25 = Event.new(category: "misc", description: "I am looking for new friends and just a nice bunch of people to hang out with. I am really interested in politics and online games (Overwatch mostly!). Looking forward to meeting all of you!", location: "Frankfurter Tor", date: (DateTime.now + (score.sample).hours), user: user_6, title: "Let's be friends")

# random comment
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

event_13.photo.attach(io: doko_13, filename: 'doko_13.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_13.id}"

event_14.photo.attach(io: betrayal_14, filename: 'betrayal_14.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_14.id}"

event_15.photo.attach(io: knit_15, filename: 'knit_15.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_15.id}"

event_16.photo.attach(io: noten_16, filename: 'noten_16.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_16.id}"

event_17.photo.attach(io: nordic_17, filename: 'nordic_17.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_17.id}"

event_18.photo.attach(io: volleybal_18, filename: 'volleybal_18.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_18.id}"

event_19.photo.attach(io: fussball_19, filename: 'fussball_19.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_19.id}"

event_20.photo.attach(io: aperol_20, filename: 'aperol_20.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_20.id}"

event_21.photo.attach(io: manicure_21, filename: 'manicure_21.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_21.id}"

event_22.photo.attach(io: hugs_22, filename: 'hugs_22.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_22.id}"

event_23.photo.attach(io: cake_23, filename: 'cake_23.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_23.id}"

event_24.photo.attach(io: pasta_24, filename: 'pasta_24.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_24.id}"

event_25.photo.attach(io: hugs_25, filename: 'hugs_25.jpg', content_type: 'image/jpg')
puts "now addding a photo #{event_25.id}"

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

event_9.save
puts "now saving past event #{event_9.id}"

event_10.save
puts "now saving past event #{event_10.id}"

event_11.save
puts "now saving past event #{event_11.id}"

event_12.save
puts "now saving past event #{event_12.id}"

event_13.save
puts "now saving past event #{event_13.id}"

event_14.save
puts "now saving past event #{event_14.id}"

event_15.save
puts "now saving past event #{event_15.id}"

event_16.save
puts "now saving past event #{event_16.id}"

event_17.save
puts "now saving past event #{event_17.id}"

event_18.save
puts "now saving past event #{event_18.id}"

event_19.save
puts "now saving past event #{event_19.id}"

event_20.save
puts "now saving past event #{event_20.id}"

event_21.save
puts "now saving past event #{event_21.id}"

event_22.save
puts "now saving past event #{event_22.id}"

event_23.save
puts "now saving past event #{event_23.id}"

event_24.save
puts "now saving past event #{event_24.id}"

event_25.save
puts "now saving past event #{event_25.id}"


puts "now generating 4 participations (one user per event)"
sleep 0.5
participation_1 = Participation.new(event: event_4, user: user_1)
participation_1 = Participation.new(event: event_4, user: user_2)
participation_2 = Participation.new(event: event_5, user: user_2)
participation_3 = Participation.new(event: event_6, user: user_3)
participation_4 = Participation.new(event: event_7, user: user_4)
# participation for user_6's past events
participation_5 = Participation.new(event: event_9, user: user_4)
participation_6 = Participation.new(event: event_9, user: user_1)
participation_7 = Participation.new(event: event_9, user: user_3)
participation_8 = Participation.new(event: event_9, user: user_2)
participation_9 = Participation.new(event: event_10, user: user_5)
participation_10 = Participation.new(event: event_10, user: user_1)
participation_11 = Participation.new(event: event_11, user: user_3)
participation_12 = Participation.new(event: event_11, user: user_2)
participation_13 = Participation.new(event: event_12, user: user_5)
participation_14 = Participation.new(event: event_12, user: user_7)
participation_15 = Participation.new(event: event_18, user: user_9)
participation_16 = Participation.new(event: event_18, user: user_8)
# should it only be for past events?
participation_17 = Participation.new(event: event_19, user: user_8)
participation_18 = Participation.new(event: event_20, user: user_9)
participation_19 = Participation.new(event: event_1, user: user_8)
participation_20 = Participation.new(event: event_2, user: user_4)
participation_21 = Participation.new(event: event_2, user: user_4)
participation_23 = Participation.new(event: event_9, user: user_6)

participation_1.save
puts "now saving #{participation_1.id}"
participation_2.save
puts "now saving #{participation_2.id}"
participation_3.save
puts "now saving #{participation_3.id}"
participation_4.save
puts "now saving #{participation_4.id}"
participation_5.save
puts "now saving #{participation_5.id}"
participation_6.save
puts "now saving #{participation_6.id}"
participation_7.save
puts "now saving #{participation_7.id}"
participation_8.save
puts "now saving #{participation_8.id}"
participation_9.save
puts "now saving #{participation_9.id}"
participation_10.save
puts "now saving #{participation_10.id}"
participation_11.save
puts "now saving #{participation_11.id}"
participation_12.save
puts "now saving #{participation_12.id}"
participation_13.save
puts "now saving #{participation_13.id}"
participation_14.save
puts "now saving #{participation_14.id}"
participation_15.save
puts "now saving #{participation_15.id}"
participation_16.save
puts "now saving #{participation_16.id}"
participation_17.save
puts "now saving #{participation_17.id}"
participation_18.save
puts "now saving #{participation_18.id}"
participation_19.save
puts "now saving #{participation_19.id}"
participation_20.save
puts "now saving #{participation_20.id}"
participation_21.save
puts "now saving #{participation_21.id}"
participation_23.save
puts "now saving #{participation_23.id}"

puts "now generating 4 reviews"
sleep 0.5
# review_1 = Review.new(participation: participation_1, score: score.sample, review: "it was an event for sure")
# review_2 = Review.new(participation: participation_2, score: score.sample, review: "it was an event for sure")
# review_3 = Review.new(participation: participation_3, score: score.sample, review: "it was an event for sure")
# review_4 = Review.new(participation: participation_4, score: score.sample, review: "it was an event for sure")
review_5 = Review.new(participation: participation_5, score: score.sample, review: "had an amazing time, great host!")
review_6 = Review.new(participation: participation_6, score: score.sample, review: "Best event yet, hightly recommended!")
review_7 = Review.new(participation: participation_7, score: score.sample, review: "had fun!")
review_8 = Review.new(participation: participation_8, score: score.sample, review: "I can't wait to do this again!")
review_9 = Review.new(participation: participation_9, score: score.sample, review: "All good")
review_10 = Review.new(participation: participation_10, score: score.sample, review: "Klasse event, netter Typ")
review_11 = Review.new(participation: participation_11, score: score.sample, review: "THE nicest guy ever, super chill and really friendly!")
review_12 = Review.new(participation: participation_12, score: score.sample, review: "Cheers, mate!")
review_13 = Review.new(participation: participation_13, score: score.sample, review: "Merci!")
review_14 = Review.new(participation: participation_14, score: score.sample, review: "Klasse event, netter Typ")
review_15 = Review.new(participation: participation_15, score: score.sample, review: "i am a bit shy but the host made me feel so welcome, it was really wonderful!")
review_16 = Review.new(participation: participation_16, score: score.sample, review: ":)")
review_17 = Review.new(participation: participation_23, score: score.sample, review: "Yummy yummy in ma tummy! Great food, great people, splendid event. Absolutely devine")
# review_17 = Review.new(participation: participation_17, score: score.sample, review: "Klasse event, netter Typ")
# review_18 = Review.new(participation: participation_18, score: score.sample, review: "thumbs up!")
# review_19 = Review.new(participation: participation_19, score: score.sample, review: "thumbs up!")
# review_20 = Review.new(participation: participation_20, score: score.sample, review: "thumbs up!")
# review_21 = Review.new(participation: participation_21, score: score.sample, review: "thumbs up!")

# review_1.save
# puts "now saving #{review_1.id}"
# review_2.save
# puts "now saving #{review_2.id}"
# review_3.save
# puts "now saving #{review_3.id}"
# review_4.save
# puts "now saving #{review_4.id}"
review_5.save
puts "now saving #{review_5.id}"
review_6.save
puts "now saving #{review_6.id}"
review_7.save
puts "now saving #{review_7.id}"
review_8.save
puts "now saving #{review_8.id}"
review_9.save
puts "now saving #{review_9.id}"
review_10.save
puts "now saving #{review_10.id}"
review_11.save
puts "now saving #{review_11.id}"
review_12.save
puts "now saving #{review_12.id}"
review_13.save
puts "now saving #{review_13.id}"
review_14.save
puts "now saving #{review_14.id}"
review_15.save
puts "now saving #{review_15.id}"
review_16.save
puts "now saving #{review_16.id}"
review_17.save
puts "now saving #{review_17.id}"
# review_17.save
# puts "now saving #{review_17.id}"
# review_18.save
# puts "now saving #{review_18.id}"
# review_19.save
# puts "now saving #{review_19.id}"
# review_20.save
# puts "now saving #{review_20.id}"
# review_21.save
# puts "now saving #{review_21.id}"



puts "now generating 12 followings"
sleep 0.5
followship_1 = Followship.new(follower: user_1, followee: user_2)
followship_2 = Followship.new(follower: user_1, followee: user_3)
followship_3 = Followship.new(follower: user_1, followee: user_4)
followship_4 = Followship.new(follower: user_6, followee: user_5)
followship_5 = Followship.new(follower: user_6, followee: user_4)
followship_6 = Followship.new(follower: user_6, followee: user_1)
followship_7 = Followship.new(follower: user_6, followee: user_7)
followship_8 = Followship.new(follower: user_6, followee: user_8)
followship_9 = Followship.new(follower: user_2, followee: user_6)
followship_10 = Followship.new(follower: user_9, followee: user_6)
followship_11 = Followship.new(follower: user_4, followee: user_6)
followship_12 = Followship.new(follower: user_2, followee: user_8)
followship_13 = Followship.new(follower: user_2, followee: user_10)
followship_14 = Followship.new(follower: user_10, followee: user_11)



followship_1.save
puts "now saving #{followship_1.id}"
followship_2.save
puts "now saving #{followship_2.id}"
followship_3.save
puts "now saving #{followship_3.id}"
followship_4.save
puts "now saving #{followship_4.id}"
followship_5.save
puts "now saving #{followship_5.id}"
followship_6.save
puts "now saving #{followship_6.id}"
followship_7.save
puts "now saving #{followship_7.id}"
followship_8.save
puts "now saving #{followship_8.id}"
followship_9.save
puts "now saving #{followship_9.id}"
followship_10.save
puts "now saving #{followship_10.id}"
followship_11.save
puts "now saving #{followship_11.id}"
followship_12.save
puts "now saving #{followship_12.id}"
followship_13.save
puts "now saving #{followship_13.id}"
followship_14.save
puts "now saving #{followship_14.id}"


puts "now generating 8 chatrooms"

chatroom_1 = Chatroom.new(name: event_1.title, event: event_1 )
puts "now saving chatroom_1"
chatroom_1.save
chatroom_2 = Chatroom.new(name: event_2.title, event: event_2 )
puts "now saving chatroom_2"
chatroom_2.save
chatroom_3 = Chatroom.new(name: event_3.title, event: event_3 )
puts "now saving chatroom_3"
chatroom_3.save
chatroom_4 = Chatroom.new(name: event_4.title, event: event_4 )
puts "now saving chatroom_4"
chatroom_4.save
chatroom_5 = Chatroom.new(name: event_5.title, event: event_5 )
puts "now saving chatroom_5"
chatroom_5.save
chatroom_6 = Chatroom.new(name: event_6.title, event: event_6 )
puts "now saving chatroom_6"
chatroom_6.save
chatroom_7 = Chatroom.new(name: event_7.title, event: event_7 )
puts "now saving chatroom_7"
chatroom_7.save
chatroom_8 = Chatroom.new(name: event_8.title, event: event_8 )
puts "now saving chatroom_8"
chatroom_8.save
chatroom_9 = Chatroom.new(name: event_9.title, event: event_9 )
puts "now saving chatroom_9"
chatroom_9.save
chatroom_10 = Chatroom.new(name: event_10.title, event: event_10 )
puts "now saving chatroom_10"
chatroom_10.save
chatroom_11 = Chatroom.new(name: event_11.title, event: event_11 )
puts "now saving chatroom_11"
chatroom_11.save
chatroom_12 = Chatroom.new(name: event_12.title, event: event_12 )
puts "now saving chatroom_8"
chatroom_12.save
chatroom_13 = Chatroom.new(name: event_13.title, event: event_13 )
puts "now saving chatroom_13"
chatroom_13.save
chatroom_14 = Chatroom.new(name: event_14.title, event: event_14 )
puts "now saving chatroom_8"
chatroom_14.save
chatroom_15 = Chatroom.new(name: event_15.title, event: event_15 )
puts "now saving chatroom_15"
chatroom_15.save
chatroom_16 = Chatroom.new(name: event_16.title, event: event_16 )
puts "now saving chatroom_16"
chatroom_16.save
chatroom_17 = Chatroom.new(name: event_17.title, event: event_17 )
puts "now saving chatroom_17"
chatroom_17.save
chatroom_18 = Chatroom.new(name: event_18.title, event: event_18 )
puts "now saving chatroom_18"
chatroom_18.save
chatroom_19 = Chatroom.new(name: event_19.title, event: event_19 )
puts "now saving chatroom_17"
chatroom_19.save
chatroom_20 = Chatroom.new(name: event_20.title, event: event_20 )
puts "now saving chatroom_20"
chatroom_20.save
chatroom_21 = Chatroom.new(name: event_21.title, event: event_21 )
puts "now saving chatroom_21"
chatroom_21.save
chatroom_22 = Chatroom.new(name: event_22.title, event: event_22 )
puts "now saving chatroom_22"
chatroom_22.save
chatroom_23 = Chatroom.new(name: event_23.title, event: event_23 )
puts "now saving chatroom_23"
chatroom_23.save
chatroom_24 = Chatroom.new(name: event_24.title, event: event_24 )
puts "now saving chatroom_24"
chatroom_24.save
chatroom_25 = Chatroom.new(name: event_25.title, event: event_25 )
puts "now saving chatroom_24"
chatroom_25.save

puts "now generating a random amount of messages"

# random = (40..70).to_a
random = (60..110).to_a
chatrooms = [chatroom_1, chatroom_2, chatroom_3, chatroom_4, chatroom_5, chatroom_6, chatroom_7, chatroom_8, chatroom_9, chatroom_10, chatroom_11, chatroom_12, chatroom_13, chatroom_14, chatroom_15, chatroom_16, chatroom_17, chatroom_18, chatroom_19, chatroom_20, chatroom_21, chatroom_22, chatroom_23, chatroom_24, chatroom_25]

messages = ["I'll be 5 minutes late", "amazing, looking forward", "can i bring my dog?", "never done it, so excited", "wow!", "any allergies?", "are you guys there already?", "can't find the place, help pls", "I have been there before", "it is really cool!", "amazeballs", "alrighty tighty", "danke!", "coolio", "so good", "yummy tummy!", "boom", "no kidding", "lol", "i love the description, haha", "love this!", "merci!", "looking forward to it", "do i need to bring anything?", "how do i get here from HbF??", "i heard this place is v. cool", "looooool!!!!", "i've not done this in a long time", "i think i'll need to practice", "who else is coming??", "is there a dress code?", Faker::Movie.quote, Faker::Marketing.buzzwords, Faker::Hipster.sentence, Faker::Hacker.say_something_smart, Faker::ChuckNorris.fact, Faker::Device.serial, Faker::Games::Fallout.quote, Faker::Movie.quote, Faker::Marketing.buzzwords, Faker::Hipster.sentence, Faker::Hacker.say_something_smart, Faker::ChuckNorris.fact, Faker::Device.serial, Faker::Games::Fallout.quote, Faker::Movie.quote, Faker::Marketing.buzzwords, Faker::Hipster.sentence, Faker::Hacker.say_something_smart, Faker::ChuckNorris.fact, Faker::Device.serial, Faker::Games::Fallout.quote, Faker::Movie.quote, Faker::Marketing.buzzwords, Faker::Hipster.sentence, Faker::Hacker.say_something_smart, Faker::ChuckNorris.fact, Faker::Device.serial, Faker::Games::Fallout.quote]

random.sample.times do |l|
	hello = Message.new(content: messages.sample, user: users.sample, chatroom: chatrooms.sample)
	puts "saving the message #{hello.content} to #{hello.chatroom.event.title}\n\n"
	sleep(0.1)
	hello.save

end