# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Spaceship.create(
#   name: "Mammoth Vessel",
#   capacity: "5000",
#   origin: "Zoltar",
#   photo_url: "http://thumb10.shutterstock.com/display_pic_with_logo/132268/116848093/stock-photo-science-fiction-scene-of-a-futuristic-interstellar-escort-frigate-and-small-scout-ships-travelling-116848093.jpg",
#   purpose: "Bolding going")

# Spaceship.create(
#   name: "Tiny Ship",
#   capacity: "500",
#   origin: "Mexyldn",
#   photo_url: "http://thumb9.shutterstock.com/display_pic_with_logo/874510/874510,1324800345,2/stock-photo-spaceships-on-an-alien-planet-91414991.jpg",
#   purpose: "Cruising")


Alien.create(
  name: "Marvin",
  species: "Martian",
  strength: "speaking quickly",
  spaceship_id: "1")

Alien.create(
  name: "Zeke",
  species: "Beluvian",
  strength: "speaking slowly",
  spaceship_id: "1")

Alien.create(
  name: "Verga",
  species: "Sliggian",
  strength: "levitation",
  spaceship_id: "2")

Alien.create(
  name: "Jesandal",
  species: "Reptiphibian",
  strength: "telepathy",
  spaceship_id: "2")