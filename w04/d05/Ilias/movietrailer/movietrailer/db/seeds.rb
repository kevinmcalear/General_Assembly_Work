# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.delete_all
Trailer.delete_all

Movie.create(title: "The Room", year: 2003, poster_url: "http://www.theroommovie.com/TheRoomPOSTER-L.jpg")
Movie.create(title: "Hackers", year: 1995, poster_url: "http://images.moviepostershop.com/hackers-movie-poster-1995-1020190474.jpg")

Trailer.create(title: "The Room", embed_url: "http://www.youtube.com/watch?v=yCj8sPCWfUw", movie_id: 1)
