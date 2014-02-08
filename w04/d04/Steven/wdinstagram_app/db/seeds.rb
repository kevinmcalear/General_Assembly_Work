# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Wdinstagram.delete_all

Wdinstagram.create(name: "Bulldog!", img_address: "http://d3o47n6kn1r59u.cloudfront.net/images/dogbreeds/large/Bulldog.jpg", date_taken: "2013-10-10")
Wdinstagram.create(name: "Chicken!", img_address: "http://whatscookingamerica.net/Poultry/PoultryPhotos/ChickenCooked5.jpg", date_taken: "2012-12-13")
Wdinstagram.create(name: "Drums!", img_address: "http://www.candcdrumseurope.com/admin/resources/custom-kit-brown-2-w495h330@2x.jpeg", date_taken: "2010-04-04")


