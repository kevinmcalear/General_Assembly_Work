# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples: 
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Movie.create(title: "Clue", year: 1985, poster_url: "http://ia.media-imdb.com/images/M/MV5BNTc3NDc1ODYxNl5BMl5BanBnXkFtZTcwMjc5MDMyMQ@@._V1_SY317_CR5,0,214,317_.jpg" )
clue = Movie.find_by(title: "Clue")
# Character.create(name: "The Butler", photo_url: "http://www.autostraddle.com/wp-content/uploads/2011/09/TC_clue.jpg", movie_id: clue.id)
# Character.create(name: "Mrs. Peacock", photo_url: "http://4.bp.blogspot.com/-BPIijG1eNpQ/UPM1DQXkBQI/AAAAAAAACJ4/v6Va2u0EZ9M/s1600/mrspeacock.jpg", movie_id: clue.id)
# Character.create(name: "Professor Plum", photo_url: "http://www.thegoldencloset.com/merchant/graphics/00000001/C0153i.jpg", movie_id: clue.id)
# Character.create(name: "Miss Scarlet", photo_url: "http://4.bp.blogspot.com/-kXJEIQPFfiA/T4J0Iq-BVRI/AAAAAAAACOc/w6Hzl1XDyvA/s1600/Warren_2.jpg", movie_id: clue.id)
# Character.create(name: "Colonel Mustard", photo_url: "http://www.wearysloth.com/Gallery/ActorsM/12512-3586.gif", movie_id: clue.id)
# Character.create(name: "Mrs. White", photo_url: "http://thosewhodreambyday.files.wordpress.com/2011/09/clue-mrs_-white.jpg", movie_id: clue.id)
# Character.create(name: "Mr. Green", photo_url: "http://img.photobucket.com/albums/v32/lori_beth/clue/09.jpg", movie_id: clue.id)
# Character.create(name: "Yvette", photo_url: "http://images2.fanpop.com/images/polls/296000/296653_1252428280323_full.jpg", movie_id: clue.id)
# Character.create(name: "The Cook", photo_url: "http://www.cluedofan.com/movie/hocook.jpg", movie_id: clue.id)

Trailer.create(title: "Clue", embed_url: "cDDdeHtrxfA", movie_id: clue.id)