# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movie1 = Movie.create(title: "Elysium", year: 2013, poster_url: "http://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Elysium_Poster.jpg/220px-Elysium_Poster.jpg")
character1 = Character.create(name: "Max", photo_url: "http://wpc.556e.edgecastcdn.net/80556E/img.site/PHtp5l0cJRjvww_1_m.jpg", movie_id: movie1.id)
character2 = Character.create(name: "Delacourt", photo_url: "http://oyster.ignimgs.com/mediawiki/apis.ign.com/elysium/thumb/8/82/Elysium2-610x405.jpg/468px-Elysium2-610x405.jpg", movie_id: movie1.id)
trailer1 = Trailer.create(title: "Elysium trailer", embed_url: "http://www.youtube.com/embed/QILNSgou5BY", movie_id: movie1.id)
movie2 = Movie.create(title: "Man of steel", year: 2013, poster_url: "http://observealot.files.wordpress.com/2013/07/man-of-steel-poster-final.jpg")
character3 = Character.create(name: "Clark Kent", photo_url: "http://fc09.deviantart.net/fs70/f/2013/028/b/e/clark_kent___superman__full__by_spideyville-d5osygv.jpg", movie_id: movie2.id)
character4 = Character.create(name: "Lois Lane", photo_url: "http://www.bringthenoiseuk.com/wordpress/wp-content/uploads/Lois-Lane-Adams-Man-of-Steel.jpg", movie_id: movie2.id)
trailer2 = Trailer.create(title: "Man of steel trailer", embed_url: "http://www.youtube.com/embed/T6DJcgm3wNY", movie_id: movie2.id)
movie3 = Movie.create(title: "Top gun", year: 1986, poster_url: "http://www.moviesgamesnmore.org/wp-content/gallery/season5/movie-poster-top-gun.jpg")
character5 = Character.create(name: "Maverick", photo_url: "http://whatculture.com/wp-content/uploads/2011/10/cruise1.jpg", movie_id: movie3.id)
character6 = Character.create(name: "Goose", photo_url: "http://www.bastardgentlemen.com/wp-content/uploads/2013/10/Top-Gun-Goose.jpg", movie_id: movie3.id)
trailer3 = Trailer.create(title: "Top gun trailer", embed_url: "http://www.youtube.com/embed/VN8ze3S0Uj8", movie_id: movie3.id)