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

Movie.create(
  [
    { title: "Breakfast at Tiffany's", year: 1961, poster_url: "http://movieposters.2038.net/p/Breakfast-At-Tiffany-S.jpg" },
    { title: "The Godfather", year: 1972, poster_url: "http://starspage.net/blog/wp-content/uploads/2011/08/The-Godfather-Poster-4.png"},
    { title: "Gone With The Wind", year: 1939, poster_url: "http://inweekly.net/wordpress/wp-content/uploads/2012/08/gone-with-the-wind.jpg"}

  ]
)
movie1=Movie.find_by(title: "Breakfast at Tiffany's")
movie2=Movie.find_by(title: "The Godfather")
movie3=Movie.find_by(title: "Gone With The Wind")

#trailer1=Trailer.find_by(movie_id: movie1.id)
#trailer2=Trailer.find_by(movie_id: movie2.id)
#trailer3=Trailer.find_by(movie_id: movie3.id)

Character.create(
  [
    { name: "Holly Golightly", photo_url: "http://veemoze.files.wordpress.com/2012/03/holly-golightly1.jpg", movie_id: movie1.id } ,
    { name: "Paul Varjak", photo_url: "http://www.quotesworthrepeating.com/wp-content/uploads/2012/01/Paul-Varjak.jpg", movie_id: movie1.id },
    { name: "Don Vito Corleone", photo_url: "http://www.listofimages.com/wp-content/uploads/2012/02/don-vito-corleone-corleone-don-vito-the-godfather-vito-corleone.jpg", movie_id: movie2.id},
    { name: "Michael Corleone", photo_url: "http://blog.trashness.com/wp-content/uploads/2012/01/michael-corleone-men-style-fashion-hat-godfather-style.jpeg", movie_id: movie2.id },
    { name: "Scarlett O'Hara", photo_url: "http://tobiasmastgrave.files.wordpress.com/2012/06/scarlett-ohara.jpg", movie_id: movie3.id },
    { name: "Rhett Butler", photo_url: "http://4.bp.blogspot.com/-2iBJQ2m3w2Y/TznQ6lD6AvI/AAAAAAAADco/o-2iLdD6_hc/s1600/Rhett1.jpg", movie_id: movie3.id }    
  ]
  )

Trailer.create(
[
  { title: "Breakfast at Tiffanys trailer", embed_url: "http://www.youtube.com/embed/eJJvjGKhscA", movie_id: movie1.id },
  { title: "The Godfather trailer", embed_url: "http://www.youtube.com/embed/sY1S34973zA", movie_id: movie2.id },
  { title: "Gone with the Wind trailer", embed_url: "http://www.youtube.com/embed/OFu-jemU-bA", movie_id: movie3.id }

]
  )