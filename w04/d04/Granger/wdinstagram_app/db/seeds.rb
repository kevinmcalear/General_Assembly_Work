# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Entry.all.each {|entry| entry.destroy}
Entry.create(author: 'Julio', photo_url: 'http://i.cdn.turner.com/si/multimedia/photo_gallery/0902/nba.dunk.contest.winners/images/1984-larry-nance.jpg', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Jessica', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Darwin', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Doug', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Zeke', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Justin', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Jasmine', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))
Entry.create(author: 'Angela', photo_url: 'www.google.com', date_taken: DateTime.new(2012, 8, 29, 22, 35, 0))