# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Spaceship.create(name: "Planet Express", capacity: 5, origin: "Earth", photo_url: "http://net.archbold.k12.oh.us/ahs/web_class/Spring_13/Futurama_Miller/images/page4%20Spaceship.jpg", purpose: "Delivery")
# Spaceship.create(name: "Nimbus spaceship", capacity: 100, origin: "Earth", photo_url: "http://static3.wikia.nocookie.net/__cb20120917030007/en.futurama/images/1/1e/Photo_%2846%29.png", purpose: "Diplomatic Relations")

# Alien.create(name: "Philip J. Fry", origin: "Earth", organic_composition: "Carbon", vulnerabilities: "intelligence", strength: 3, spaceship_id: Spaceship.find_by(name: "Planet Express"))
# Alien.create(name: "Turanga Leela", origin: "Earth", organic_composition: "Carbon", vulnerabilities: "Depth Perception", strength: 8, spaceship_id: 1)
Alien.create(name: "Zapp Brannigan", origin: "Earth", organic_composition: "Carbon", vulnerabilities: "Turanga Leela", strength: 6, spaceship_id: 3)
