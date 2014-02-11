# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Spaceship.delete_all
Alien.delete_all

Spaceship.create(name: "USS Rob", capacity: 20, photo_url: "http://imgs.tuts.dragoart.com/how-to-draw-a-spaceship_1_000000003677_3.jpg")
Alien.create(name: "Rob", origin: "Earth",spaceships_id: Spaceship.find_by(:name=>"USS Rob").id )
Alien.create(name: "Tim", origin: "Earth",spaceships_id: Spaceship.find_by(:name=>"USS Rob").id )
Alien.create(name: "Phil", origin: "Earth",spaceships_id: Spaceship.find_by(:name=>"USS Rob").id )

Spaceship.create(name: "Ship of Fools", capacity: 5, photo_url: "http://imgs.tuts.dragoart.com/how-to-draw-a-spaceship_1_000000003677_3.jpg")
Alien.create(name: "Sarah", origin: "Mars",spaceships_id: Spaceship.find_by(:name=>"Ship of Fools").id )
Alien.create(name: "Sally", origin: "Mars",spaceships_id: Spaceship.find_by(:name=>"Ship of Fools").id )
Alien.create(name: "Amanda", origin: "Mars",spaceships_id: Spaceship.find_by(:name=>"Ship of Fools").id )
