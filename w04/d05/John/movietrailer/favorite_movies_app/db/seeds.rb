# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Movie.create(
#   title: "Batman Begins",
#   year: "2005",
#   poster_url: "http://ia.media-imdb.com/images/M/MV5BNTM3OTc0MzM2OV5BMl5BanBnXkFtZTYwNzUwMTI3._V1_SX214_.jpg")

# Movie.create(
#   title: "The Dark Knight",
#   year: "2008",
#   poster_url: "http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY317_CR0,0,214,317_.jpg")

# Movie.create(
#   title: "The Dark Knight Rises",
#   year: "2012",
#   poster_url: "http://ia.media-imdb.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_SX214_.jpg")

# Character.create(
#   name: "Scarecrow",
#   photo_url: "http://ia.media-imdb.com/images/M/MV5BMTIzMDI3NjYzOF5BMl5BanBnXkFtZTYwNjUwMTI3._V1_SY100_CR67,0,100,100_.jpg",
#   movie_id: "1")

# Character.create(
#   name: "Ducard",
#   photo_url: "http://ia.media-imdb.com/images/M/MV5BMTI1MjEwNjI3MV5BMl5BanBnXkFtZTYwMzcwMTI3._V1._CR81,0,323,323_SS90_.jpg",
#   movie_id: "1")

# Character.create(
#   name: "Joker",
#   photo_url: "http://ia.media-imdb.com/images/M/MV5BMTU3MTg0ODM1MV5BMl5BanBnXkFtZTcwNDgzMTk2Mw@@._V1_SY100_CR68,0,100,100_.jpg",
#   movie_id: "2")

# Character.create(
#   name: "Harvey Dent",
#   photo_url: "http://ia.media-imdb.com/images/M/MV5BMjEzMDI5Mjk2M15BMl5BanBnXkFtZTcwOTYxMTk2Mw@@._V1_SX100_CR0,0,100,100_.jpg",
#   movie_id: "2")

# Character.create(
#   name: "Bane",
#   photo_url: "http://ia.media-imdb.com/images/M/MV5BMjI0NzQyMDc4N15BMl5BanBnXkFtZTcwNzQzNTMxOA@@._V1._CR0,0,1362,1362_SS90_.jpg",
#   movie_id: "3")

# Character.create(
#   name: "Catwoman",
#   photo_url: "http://ia.media-imdb.com/images/M/MV5BMjE4NjA3ODg5N15BMl5BanBnXkFtZTcwNDM2NDkwOA@@._V1_SY100_CR25,0,100,100_.jpg",
#   movie_id: "3")

Trailer.create(
  title: "Batman Begins Official Trailer",
  embed_url: "http://www.youtube.com/embed/vak9ZLfhGnQ",
  movie_id: "1")

Trailer.create(
  title: "The Dark Knight Official Trailer",
  embed_url: "http://www.youtube.com/embed/5y2szViJlaY",
  movie_id: "2")

Trailer.create(
  title: "The Dark Knight Rises Official Trailer",
  embed_url: "http://www.youtube.com/embed/GokKUqLcvD8",
  movie_id: "3")


