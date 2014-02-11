# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
enterprise = Spaceship.create(name: "Enterprise", capacity: 100, origin: "earth", species_allow: "any", photo_url: "http://static1.wikia.nocookie.net/__cb20120317051821/memoryalpha/en/images/9/91/USS_Enterprise-A_in_spacedock.jpg", purpose: "Space Exploration")
enterprise.aliens.create(appendages: 4, origin: "Earth", name: "Captian Kurk", organic_substrate: "carbon", weakness: "Travelocity", strength: "Karate Chops")
enterprise.aliens.create(appendages: 4, origin: "Volcan", name: "Spock", organic_substrate: "carbon", weakness: "No Emotions", strength: "Pointy Ears")
enterprise.aliens.create(appendages: 37, origin: "Appicha", name: "Handsy", organic_substrate: "chocolate", weakness: "Delicious", strength: "Shit Ton Of Hands")

serenity = Spaceship.create(name: "Serenity", capacity: 10, origin: "Earth", species_allow: "humans", photo_url:"http://www.entertainmentearth.com/images/AUTOIMAGES/QMSER0179lg.jpg", purpose: "smuggling")
serenity.aliens.create(appendages: 4, origin: "Earth", name: "Mal Reynolds", organic_substrate: "carbon", weakness: "Douchebag", strength: "skilled fighter")
serenity.aliens.create(appendages: 4, origin: "Earth", name: "Zoe", organic_substrate: "carbon", weakness: "Mean Person", strength: "Badass")