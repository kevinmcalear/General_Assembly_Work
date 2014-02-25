# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Spaceship.delete_all
Alien.delete_all

Spaceship.create(
  name: "Kamidake",
  capacity: 20,
  origin: "Jurai",
  photo_url: "http://static1.wikia.nocookie.net/__cb20120730200847/tenchi/images/5/55/10GXP37P.jpg",
  purpose: "military"
  )

Spaceship.create(
  name: "The Bebop",
  capacity: 10,
  origin: "Ganymede",
  photo_url: "http://static2.wikia.nocookie.net/__cb20090316154116/cowboybebop/images/9/98/2_Bebopwater.png",
  purpose: "freight"
  )

Alien.create(
num_appendages: 4,
origin: "Balta/Wau",
name: "Ryoko Balta",
organic_substrate: "carbon",
weakness: "the human condition",
powers: "can shapeshift into a dog-person",
spaceship_id: 1
  )

Alien.create(
num_appendages: 5,
origin: "Mars",
name: "Spike Spiegel",
organic_substrate: "carbon",
weakness: "Julia",
powers: "jeet kune do, cybernetic eye",
spaceship_id: 2
  )

Alien.create(
num_appendages: 5,
origin: "medical research facility",
name: "Ein",
organic_substrate: "carbon",
weakness: "cannot speak",
powers: "superdog intelligence, is a super cute corgi",
spaceship_id: 2
  )