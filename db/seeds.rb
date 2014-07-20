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
  latitude: 123, 
  longitude: 456, 
  facebook_id: 1,
  twitter_id: 1)

zambezia = Friend.create(
  name: "Zambezia Holgrauf", 
  location: "Hamburger County", 
  latitude: 777, 
  longitude: 999, 
  facebook_id: 2,
  twitter_id: 2)

florp = User.create(
  name: "Florp the Alien",
  location: "Florptown Stadium",
  latitude: 1212121,
  longitude: 54545454,
  facebook_id: 11111,
  twitter_id: 22222,
  phone: "131-444-0258"
  )

beef = User.create(
  name: "Beef Chesterton",
  location: "Pinkberry",
  latitude: 987654321,
  longitude: 123456789,
  facebook_id: 987987987,
  twitter_id: 358358358,
  phone: "111-000-4442"
  )


