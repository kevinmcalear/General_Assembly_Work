# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.delete_all
Character.delete_all
Trailer.delete_all

Movie.create(title: "Her", year: 2014, poster_url: "http://www.filmdispenser.com/wp-content/uploads/2013/12/her-movie-poster.jpg")
Character.create(name: "Joaquin Phoenix", photo_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/P/Joaquin-Phoenix-358254-1-402.jpg", movie_id: Movie.find_by(title: "Her").id)
Character.create(name: "Amy Adams", photo_url: "http://www.hdpaperwall.com/wp-content/uploads/2013/11/Amy-Adams-amy-adams-712650_1600_1200.jpg", movie_id: Movie.find_by(title: "Her").id)
Trailer.create(title: "Her Trailer", embeded_url: "//www.youtube.com/embed/WzV6mXIOVl4", movie_id: Movie.find_by(title: "Her").id)
