# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


movie = Movie.create(title: 'Her', year: 2013, poster_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTplBoitpOr90QnXW5fr4wKBFsrgkqt2cZ8nTSqMWVfhtT1mfcUJgCdty7w")

character = Character.create(name: 'Her', photo_url: "http://us.123rf.com/400wm/400/400/manaemedia/manaemedia1104/manaemedia110400055/9344229-computer-isolated-with-clipping-path-over-white-background.jpg", movie_id: movie.id)