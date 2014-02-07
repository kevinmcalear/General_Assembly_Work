# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Dog.delete_all - run if you want to delete all before seeding the db

Dog.create(name: "Jeff", breed: "Shaggydog", age: 3)
Dog.create(name: "PJ", breed: "Bloodhound", age: 3)
Dog.create(name: "Peter", breed: "Beagle", age: 3)
Dog.create(name: "Cory", breed: "Poodle", age: 3)

# run rake db:seed in root folder of app to seed the database