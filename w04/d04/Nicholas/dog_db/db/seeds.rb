# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dog.delete_all

Dog.create(name:"Jeff", breed:"Shaggydog", age: 3)
Dog.create(name:"PJ", breed:"Bloodhound", age: 4)
Dog.create(name:"Zach", breed:"Beagle", age: 1)
Dog.create(name:"Rover", breed:"Retriever", age: 6)
Dog.create(name:"Byron", breed:"Corgy", age: 10)
Dog.create(name:"Lucky", breed:"Schnouser", age: 1)
Dog.create(name:"Rupert", breed:"Poodle", age: 5)
Dog.create(name:"Stitch", breed:"Pincher", age: 3)