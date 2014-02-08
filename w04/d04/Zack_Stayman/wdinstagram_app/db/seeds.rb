# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all

Photo.create(author: "Zack", photo_url: "http://i.imgur.com/75aubyO.jpg", date_taken: Date.parse('2012-1-15') )
Photo.create(author: "Zack", photo_url: "http://i.imgur.com/75aubyO.jpg", date_taken: Date.parse('2012-1-15') )