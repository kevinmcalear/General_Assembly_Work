# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Spaceship.delete_all
Alien.delete_all

Spaceship.create(name: "Decepticon", capacity: 500, origin: "Florida", species_allowed: "Squirrels", photo_url: "bit.ly/1g2mVlU", purpose: "Kill Autobots")
Spaceship.create(name: "Air Force One", capacity: 100, origin: "DC", species_allowed: "Democrats", photo_url: "bit.ly/1kkPLC0", purpose: "Kill Autobots")
Alien.create(name: "Lars", appendage: "Claw", weakness: "Will Smith", strength: "Bitcoins", origin: "Mars", spaceship_id: 19)