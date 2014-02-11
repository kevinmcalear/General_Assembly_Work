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

Movie.create(title: "Austin Powers", year: 1997, poster_url: "http://3.bp.blogspot.com/-ugduQ6L42Ak/UBCNGAyn-MI/AAAAAAAAAuA/5QfZbMjBzhA/s1600/Austin-Powers-International-Man-of-Mystery-movie-poster.jpg")
Movie.create(title: "The Birdcage", year: 1996, poster_url: "http://uaplayclubwest.files.wordpress.com/2014/01/7izpguvul2sidkbgsexes2ilc2b.jpg")
Movie.create(title: "Christmas Vacation", year: 1989, poster_url: "http://1.bp.blogspot.com/-Zfjjg2xDSAc/Tuy3jXHdp7I/AAAAAAAAB0w/l4xI94GjxWc/s1600/Christmas%2BVacation%2B%25281989%2529%2Bposter.jpg")

Character.create(name: "Mike Myers", photo_url: "http://upload.wikimedia.org/wikipedia/commons/5/5a/Mike_Myers_David_Shankbone_2010_NYC.jpg", movie_id: 4, trailer_id: 4)
Character.create(name: "Elizabeth Hurley", photo_url: "http://www.theplace2.ru/archive/elizabeth_hurley/img/elizabeth_hurley8.jpg", movie_id: 4, trailer_id: 4)

Character.create(name: "Robin Williams", photo_url: "http://atlantablackstar.com/wp-content/uploads/2012/05/robin-williams.jpg", movie_id: 5, trailer_id: 5)
Character.create(name: "Nathan Lane", photo_url: "http://nytix.com/news/wp-content/uploads/2012/10/nathanlane.jpg", movie_id: 5, trailer_id: 5)

Character.create(name: "Chevy Chase", photo_url: "http://upload.wikimedia.org/wikipedia/commons/1/13/Chevy_Chase_at_the_2008_Tribeca_Film_Festival.JPG", movie_id: 6, trailer_id: 6)
Character.create(name: "Randy Quaid", photo_url: "http://assets-s3.usmagazine.com/uploads/assets/articles/28435-randy-quaid-arrested-in-texas/1253833520_randy-quaid-290.jpg", movie_id: 6, trailer_id: 6)

Trailer.create(title: "Austin Powers", embed_url: "http://www.youtube.com/embed/Oze1bn4_pbk", movie_id: 4)
Trailer.create(title: "The Birdcage", embed_url: "http://www.youtube.com/embed/hoJOol3aoJQ", movie_id: 5)
Trailer.create(title: "Christmas Vacation", embed_url: "http://www.youtube.com/embed/NBTTipJX-h4", movie_id: 6)