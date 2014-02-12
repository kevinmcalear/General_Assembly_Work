# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  
i_am = Movie.create(name: "I Am", year: 2010, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTMyNTI4ODAyOV5BMl5BanBnXkFtZTcwMTk0NDQyNA@@._V1__SX1394_SY727_.jpg")

i_am.characters.create(name: "Ray Anderson", photo_url: "http://www.iamthedoc.com/site/wp-content/uploads/2011/01/rayanderson.jpg")
i_am.characters.create(name: "Noam Chomsky", photo_url: "http://www.iamthedoc.com/site/wp-content/uploads/2011/01/noamchomsky.jpg")
i_am.characters.create(name: "Marc Ian Barasch", photo_url: "http://www.iamthedoc.com/site/wp-content/uploads/2011/01/marcianbarasch.jpg")

i_am.trailers.create(name: "I Am Trailer", embed_url: "iYtfnONazTU")




amadeus = Movie.create(name: "Amadeus", year: 1984, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTg5NDkwMTk5N15BMl5BanBnXkFtZTYwODg3MDk2._V1__SX1394_SY727_.jpg")

amadeus.characters.create(name: "Antonio Salieri", photo_url: "http://ia.media-imdb.com/images/M/MV5BNDQ2MzQ2ODYxM15BMl5BanBnXkFtZTcwODY3NTIxNw@@._V1__SX1394_SY727_.jpg")
amadeus.characters.create(name: "Wolfgang Amadeus Mozart", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTM0ODY0MTE0NF5BMl5BanBnXkFtZTcwOTQwNTIzOA@@._V1__SX1394_SY727_.jpg")
amadeus.characters.create(name: "Constanze Mozart", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTU2MDg1OTg3Nl5BMl5BanBnXkFtZTcwOTgxMTg5Nw@@._V1__SX1394_SY727_.jpg")

amadeus.trailers.create(name: "Amadeus Trailer", embed_url: "yIzhAKtEzY0")





pee_wee = Movie.create(name: "Pee Wee's Big Adventure", year: 1985, poster_url: "http://ia.media-imdb.com/images/M/MV5BMjEyMjI3MjAxMF5BMl5BanBnXkFtZTYwOTMxNzk4._V1__SX1394_SY727_.jpg")

pee_wee.characters.create(name: "Pee-wee Herman", photo_url: "http://ia.media-imdb.com/images/M/MV5BMjIwMjYyNjk4Nl5BMl5BanBnXkFtZTcwNzA4NDYwMw@@._V1__SX1394_SY727_.jpg")
pee_wee.characters.create(name: "Dottie", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTg1NTQwMTgzN15BMl5BanBnXkFtZTcwOTI1NTg5Mw@@._V1__SX1394_SY727_.jpg")
pee_wee.characters.create(name: "Francis Buxton", photo_url: "http://ia.media-imdb.com/images/M/MV5BNTE5NzkxNzU3Nl5BMl5BanBnXkFtZTcwMDA1MTEzMQ@@._V1__SX1394_SY727_.jpg")

pee_wee.trailers.create(name: "Pee Wee's Big Adventure Trailer", embed_url: "mrRi4saj1q8")



