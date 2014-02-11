# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.delete_all
Trailer.delete_all
Character.delete_all

Movie.create(title: "Raiders of the Lost Ark", year: 1981, poster_url: "http://www.filmnight.org/wp-content/uploads/2013/06/Indiana-Jones-Raiders.jpg")
movie=Movie.find_by(title: "Raiders of the Lost Ark")

movie.trailers.create(title: "Trailer 1", embed_url: "XkkzKHCx154")

Movie.create(title: "The Last Crusade", year: 1989, poster_url: "http://www.cinemasterpieces.com/82011/indyjun11.jpg")
movie_2=Movie.find_by(title: "The Last Crusade")

movie_2.trailers.create(title: "Trailer 1", embed_url: "A7TaY8HWYd8")

Movie.create(title: "A New Hope", year: 1977, poster_url: "http://www.cinemasterpieces.com/82011/swcportal.jpg")
movie_3=Movie.find_by(title: "A New Hope")

movie_3.trailers.create(title: "Trailer 1", embed_url: "1g3_CFmnU7k")

Character.create(name: "Indiana Jones", photo_url: "http://www.theproducersperspective.com/wp-content/uploads/2013/02/indy.jpeg")
indy = Character.find_by(name: "Indiana Jones")

movie.characters << indy
movie_2.characters << indy


Character.create(name: "Henry Jones", photo_url: "http://images2.wikia.nocookie.net/__cb20071008045809/indianajones/images/3/3e/Henry_Jones.jpg")
henry = Character.find_by(name: "Henry Jones")

movie_2.characters << henry

Character.create(name: "Luke Skywalker", photo_url: "http://static3.wikia.nocookie.net/__cb20091030151424/starwars/images/d/d9/Luke-rotjpromo.jpg")
luke = Character.find_by(name: "Luke Skywalker")

movie_3.characters << luke

Character.create(name: "Han Solo", photo_url: "http://files.tested.com/photos/2012/12/12/42218-star-wars_833648f8.jpg")
han = Character.find_by(name: "Han Solo")

movie_3.characters << han