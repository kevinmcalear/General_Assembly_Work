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


Building.create(name: "Empire State Building", address: "350 5th Ave, New York, NY", year_built: 1929, photo_url: "http://upload.wikimedia.org/wikipedia/commons/2/20/Empire_State_Building_by_David_Shankbone.jpg")

Movie.create(title:"Eternal Sunshine of the Spotless Mind" ,year: 2004, poster_url:"http://www.impawards.com/2004/posters/eternal_sunshine_of_the_spotless_mind_ver4.jpg" )
Movie.create(title:"The Fountain" ,year: 2006, poster_url:"http://www.impawards.com/2006/posters/fountain_xlg.jpg" )
Movie.create(title:"Inception" ,year: 2010 ,poster_url:"http://www.impawards.com/2010/posters/inception_xlg.jpg" )

Trailer.create(title:"Eternal Sunshine of the Spotless Mind", embed_url:"http://www.youtube.com/embed/1GiLxkDK8sI", movie_id: 7)
Trailer.create(title:"The Fountain", embed_url:"http://www.youtube.com/embed/hA2IpUTZkls", movie_id: 8)
Trailer.create(title:"Inception", embed_url:"http://www.youtube.com/embed/66TuSJo4dZM", movie_id: 9)

Character.create(name:"Joel Barish", photo_url:"http://wodumedia.com/wp-content/uploads/2012/10/Jim-Carrey-as-Joel-Barish-in-Eternal-Sunshine-of-the-Spotless-Mind-2004-5.jpg", movie_id: 7)
Character.create(name:"Clementine Kruczynski", photo_url:"http://fotogaleri.ntvmsnbc.com/Assets/PhotoGallery/Pictures/0000501633.jpg", movie_id: 7)

Character.create(name:"Tom Creo", photo_url:"http://cinema1544.files.wordpress.com/2012/09/tom-creo.jpg", movie_id: 8)
Character.create(name:"Izzi Creo", photo_url:"http://www.hotflick.net/flicks/2006_The_Fountain/big/fhd006TFT_Rachel_Weisz_025.jpg", movie_id: 8)

Character.create(name:"Cobb", photo_url:"http://images4.fanpop.com/image/photos/17900000/Leonardo-DiCaprio-as-Dom-Cobb-in-Inception-leonardo-dicaprio-17975302-1364-768.jpg", movie_id: 9)
Character.create(name:"Arthur", photo_url:"http://static3.wikia.nocookie.net/__cb20131012124819/inception/images/6/6b/Waking_Up.jpg", movie_id: 9)
