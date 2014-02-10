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
  title: 'The Master',
  year: 2012,
  poster_url: 'http://www.impawards.com/2012/posters/master_ver6_xlg.jpg'
  )
the_master=Movie.find_by(title: 'The Master')
Character.create(
  name: 'Freddie Quell',
  photo_url: 'http://tonyortega.org/wp-content/uploads/2012/10/freddiequell2.jpg',
  movie_id: the_master.id
  )
Character.create(
  name: 'Lancaster Dodd',
  photo_url: 'http://25.media.tumblr.com/5a9aa191f53d9abbd6a1b661c3ea2430/tumblr_mj4uthKrBq1qzqju7o1_500.jpg',
  movie_id: the_master.id
  )
Trailer.create(
  title: 'The Master',
  embed_url: '//www.youtube.com/embed/fJ1O1vb9AUU',
  movie_id: the_master.id
  )

Movie.create(
  title: 'The Big Lebowski',
  year: 1998, 
  poster_url: 'http://www.impawards.com/1998/posters/big_lebowski_ver1_xlg.jpg'
  )
big_lebowski = Movie.find_by( title:'The Big Lebowski')

Character.create(
  name: 'Jeffrey ''The Dude'' Lebowski',
  photo_url: 'http://www.castingfrontier.com/wp-content/uploads/2012/04/movies_big_lebowski_the_dude_jeff_bridges_movie_desktop_1280x1024_wallpaper-43039.jpg',
  movie_id: big_lebowski.id
  )
Character.create(
  name: 'Walter Sobchak', 
  photo_url: 'http://gutenfilm.files.wordpress.com/2011/12/the-big-lebowski.jpg',
  movie_id: big_lebowski.id
  )
Character.create(
  name: 'Theodore Donald Kerabatsos',
  photo_url: 'http://25.media.tumblr.com/tumblr_laazocDDpg1qcazvso1_500.jpg',
  movie_id: big_lebowski.id
  )
Trailer.create(
  title: 'The Big Lebowski',
  embed_url: '//www.youtube.com/embed/cd-go0oBF4Y',
  movie_id: big_lebowski.id
  )

Movie.create(
  title: 'The Terminator',
  year: 1984,
  poster_url: 'http://www.wichitaorpheum.com/wp-content/uploads/2013/12/The-Terminator-Poster.jpg'
  )
terminator = Movie.find_by( title:'The Terminator')

Character.create(
  name: 'Sarah Connor',
  photo_url: 'http://segabits.com/wp-content/uploads/2012/02/SarahConnor-T1.jpg',
  movie_id: terminator.id
  )
Character.create(
  name: 'The Terminator',
  photo_url: 'http://www.thatfilmguy.net/wp-content/uploads/2012/06/The-Terminator.jpg',
  movie_id: terminator.id
  )
Trailer.create(
  title: 'The Terminator',
  embed_url: '//www.youtube.com/embed/c4Jo8QoOTQ4',
  movie_id: terminator.id
  )