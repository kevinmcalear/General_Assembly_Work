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

Movie.create(title: "Star Wars", year_released: "1977", poster_url: "http://www.filmmusicnotes.com/wp-content/uploads/2013/03/old-star-wars-poster.jpg", genre: "Science-Fiction", director: "George Lucas")
Character.create(name: "Luke Skywalker", actor: "Mark Hamill", photo_url: "http://s3.amazonaws.com/rapgenius/1345598281_Episode_4_Luke_Skywalker_1.jpg", gender: 1, movies_id: Movie.find_by(title: "Star Wars").id )
Character.create(name: "Princess Leia", actor: "Carrie Fisher", photo_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRmbdwit1To7DSZlN-YSPAE8T7-eta8Q6eByTp1bTteN67VfmBy", gender: 2, movies_id: Movie.find_by(title: "Star Wars").id )
Character.create(name: "Han Solo", actor: "Harrison Ford", photo_url: "http://www.konbini.com/en/files/2012/11/harrison-ford-as-han-solo-in-star-wars-trilogy.jpeg", gender: 1, movies_id: Movie.find_by(title: "Star Wars").id )
Trailer.create(title: "A New Hope", embed_url: "1g3_CFmnU7k", movies_id: Movie.find_by(title: "Star Wars").id)

Movie.create(title: "Forrest Gump", year_released: "1994", poster_url: "http://ia.media-imdb.com/images/M/MV5BMTQwMTA5MzI1MF5BMl5BanBnXkFtZTcwMzY5Mzg3OA@@._V1_SX214_.jpg", genre: "Drama", director: "Robert Zemeckis")
Character.create(name: "Forrest Gump", actor: "Tom Hanks", photo_url: "http://images2.fanpop.com/images/photos/6600000/Forrest-Gump-forrest-gump-6674987-1280-620.jpg", gender: 1, movies_id: Movie.find_by(title: "Forrest Gump").id )
Character.create(name: "Lt. Dan", actor: "Gary Sinise", photo_url: "http://standeatherage.com/uploads/film_images/movie_stills/forrest_gump_22_630_pxlw.jpg", gender: 1, movies_id: Movie.find_by(title: "Forrest Gump").id )
Character.create(name: "Jenny", actor: "Robin Wright", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBECu7u4ngcoNd0hoGwYHNahQN3okq-YKDLX21pcnTTdDElzRg", gender: 2, movies_id: Movie.find_by(title: "Forrest Gump").id )
Trailer.create(title: "Forest Gump", embed_url: "uPIEn0M8su0", movies_id: Movie.find_by(title: "Forrest Gump").id)

Movie.create(title: "Harry Potter", year_released: "2001", poster_url: "http://ia.media-imdb.com/images/M/MV5BMTYwNTM5NDkzNV5BMl5BanBnXkFtZTYwODQ4MzY5._V1_SY317_CR8,0,214,317_.jpg", genre: "Fantasy", director: "Christopher Columbus")
Character.create(name: "Harry Potter", actor: "Daniel Radcliffe", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTg4NTExODc3Nl5BMl5BanBnXkFtZTgwODUyMDEzMDE@._V1_SY317_CR11,0,214,317_.jpg", gender: 1, movies_id: Movie.find_by(title: "Harry Potter").id )
Character.create(name: "Hermione Granger", actor: "Emma Watson", photo_url: "http://imworld.aufeminin.com/story/20130626/emma-watson-44467_w1000.jpg", gender: 2, movies_id: Movie.find_by(title: "Harry Potter").id )
Trailer.create(title: "Harry Potter", embed_url: "K1KPcXRMMo4", movies_id: Movie.find_by(title: "Harry Potter").id)
