# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

Followship.destroy_all
Review.destroy_all
Participation.destroy_all
Event.destroy_all
User.destroy_all

score = (1..5).to_a

puts "now generating seeds..."
sleep 0.5

puts "now generating 4 users"
user_1 = User.new(email: "im_a_test@example.com", first_name: "Maya", last_name: "example", gender: "female", location: "treptow", username: "bee_fan69", password: "123456")
user_2 = User.new(email: "ich_auch@example.com", first_name: "Jojo", last_name: "example", gender: "male", location: "mitte", username: "beep_beep", password: "123456")
user_3 = User.new(email: "big_example@example.com", first_name: "Aljosha", last_name: "example", gender: "male", location: "brandeburger tor", username: "spontan_boy", password: "123456")
user_4 = User.new(email: "example_time@example.com", first_name: "Marian", last_name: "example", gender: "male", location: "Volkspark Wedding", username: "monkey_time", password: "123456")
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
event_1 = Event.new(category: "food", description: "a very cool event", location: "treptower park", date: (DateTime.now + (score.sample).hours), user: user_1, title: "it's food time (future)")
event_2 = Event.new(category: "spiritual", description: "a very fun event", location: "babylon berlin", date: (DateTime.now + (score.sample).hours), user: user_2, title: "let's do yoga! (future)")
event_3 = Event.new(category: "political", description: "a very sexy event", location: "berghain", date: (DateTime.now + (score.sample).hours), user: user_3, title: "clubbing!")
event_4 = Event.new(category: "sports", description: "a very awesome event", location: "about blank, berlin", date: (DateTime.now + (score.sample).hours), user: user_4, title: "techno fitness (future)")
event_5 = Event.new(category: "food", description: "a very scary event", location: "treptower park", date: "2020-08-22", user: user_1, title: "it's food time")
event_6 = Event.new(category: "spiritual", description: "a very spooky event", location: "alt tegel berlin", date: "2020-08-23", user: user_2, title: "let's do yoga!")
event_7 = Event.new(category: "political", description: "a very unfortunate event", location: "berghain", date: "2020-08-24", user: user_3, title: "clubbing!")
event_8 = Event.new(category: "sports", description: "a very arty event", location: "about blank, berlin", date: "2020-08-25", user: user_4, title: "techno fitness")

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

