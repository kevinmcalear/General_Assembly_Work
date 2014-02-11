# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Spaceship.delete_all
Alien.delete_all

Spaceship.create(name: "bob", capacity: 10, origin: "mars", species_allowed: "martians", photo_url: "http://imgs.tuts.dragoart.com/how-to-draw-a-spaceship_1_000000003677_5.jpg", purpose: "kill all idiots")
space=Spaceship.find_by(name: "bob")
Alien.create(name: "mary", appendages: 2, origin: "mars", stuff: "pudding", weakness: "cold", strength: "pudding", spaceship_id: space.id)