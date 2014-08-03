# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Objects for tests:

bob = Friend.create(
  name: "Bob Testman", 
  location: "Burger King", 
  latitude: -40, 
  longitude: 75, 
  twitter_id: 1)

zambezia = Friend.create(
  name: "Zambezia Holgrauf", 
  location: "Hamburger County", 
  latitude: 0, 
  longitude: 90, 
  twitter_id: 2)

jiminy = Friend.create(
  name: "Jiminy Cricketpockets", 
  location: nil, 
  latitude: nil, 
  longitude: nil, 
  twitter_id: 3)

florp = User.create(
  name: "Florp the Alien",
  location: "Florptown Stadium",
  lat: 12,
  lon: 54,
  twitter_id: 22222,
  phone: "131-444-0258",
  ip_address: '68.185.243.30'
  )

beef = User.create(
  name: "Beef Chesterton",
  location: "Pinkberry",
  lat: 87,
  lon: 12,
  twitter_id: 358358358,
  phone: "111-000-4442",
  ip_address: '134.209.108.153'
  )

friendship1 = Friendship.create(friend_id: 1, user_id: 1)
friendship2 = Friendship.create(friend_id: 2, user_id: 1)
friendship3 = Friendship.create(friend_id: 3, user_id: 1)
friendship4 = Friendship.create(friend_id: 1, user_id: 2)
friendship5 = Friendship.create(friend_id: 3, user_id: 2)