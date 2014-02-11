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

Movie.create(title: "The Matrix", year: 1999, poster_url: "http://upload.wikimedia.org/wikipedia/en/c/c1/The_Matrix_Poster.jpg")
Character.create(name: "Neo", photo_url: "http://www.thesangeek.com/wp-content/uploads/KeanuReevesMatrixNeo.jpg", movie: Movie.find_by(title: "The Matrix"))
Character.create(name: "Morpheus", photo_url: "http://digboston.com/wp-content/uploads/2013/09/morpheus.png", movie: Movie.find_by(title: "The Matrix"))
Trailer.create(title: "The Matrix trailer", embed_url: "m8e-FF8MsqU", movie: Movie.find_by(title: "The Matrix"))


Movie.create(title: "Star Wars", year:1977, poster_url: "http://mindreels.files.wordpress.com/2013/02/sw.jpg")
Character.create(name: "Luke", photo_url: "http://members.shaw.ca/david.p.z.888/star_wars/pics/luke_skywalker.jpg", movie: Movie.find_by(title: "Star Wars"))
Character.create(name: "Han Solo", photo_url: "http://www.originalprop.com/blog/wp-content/uploads/2008/12/han-solo-star-wars-chronicles-promo-stormtrooper-blaster.jpg", movie: Movie.find_by(title: "Star Wars"))
Trailer.create(title: "Star Wars trailer", embed_url: "vP_1T4ilm8M", movie: Movie.find_by(title: "Star Wars"))


Movie.create(title: "The Avengers", year:2013, poster_url: "http://larryfire.files.wordpress.com/2012/05/the_avengers_movie_poster_concept_art_by_alex4everdn-d4qyip3.jpg")
Character.create(name: "Hulk", photo_url: "http://static.comicvine.com/uploads/original/12/120919/3209312-9660445429-hulk_.jpg", movie: Movie.find_by(title: "The Avengers"))
Character.create(name: "Thor", photo_url: "http://www.hdwallpapers.in/walls/the_avengers_thor-wide.jpg", movie: Movie.find_by(title: "The Avengers"))
Trailer.create(title: "The Avengers trailer", embed_url: "BxyTk-qH3-M", movie: Movie.find_by(title: "The Avengers"))

































