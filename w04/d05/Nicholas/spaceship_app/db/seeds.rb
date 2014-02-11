# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Spaceship.create(name: "Enterprise", capacity: 300, origin:"Earth", species_allowed: "humans", photo_url:"http://upload.wikimedia.org/wikipedia/en/5/54/USS_Enterprise_(NCC-1701-A).jpg", purpose: "Boldy go where no man has gone before")
Alien.create(name: "Picard", appendages: 5, organic_substrate: "skin", weakness:"Stun guns", strength:"brains", spaceships_id: 1)