# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(title: "The Dark Knight", year: 2008, poster_url: "http://emerginganabaptist.com/wp-content/uploads/2013/01/The-Dark-Knight-poster-700x1037.jpg")
Trailer.create(title: "The Dark Knight HD 1080p Trailer", embed_url: "yQ5U8suTUw0", movie_id: 1)
Character.create(name: "Bruce Wayne", photo_url: "http://casinochoice.co.uk/wp-content/uploads/2012/01/bruce-wayne2.jpg", movie_id: 1)

Movie.create(title: "Romeo+Juliet", year: 1996, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTU3Mzc3MjE3N15BMl5BanBnXkFtZTYwMzY0MTg4._V1_SY317_CR10,0,214,317_.jpg")
Trailer.create(title: "Romeo + Juliet (1996) - Official Trailer [SD]", embed_url: "jk04Rri8QoM", movie_id: 2)
Character.create(name: "Juliet Capulet", photo_url: "http://4.bp.blogspot.com/_2l8VMbYD__Q/S41VzBh8mUI/AAAAAAAAAKU/KZkZSCXSu90/s1600-h/RJBlog7.jpg", movie_id: 2)
Character.create(name: "Romeo Montague", photo_url: "http://4.bp.blogspot.com/-kq-nRdYFQf4/T9P7M8SMQRI/AAAAAAAADko/Hlm3WXpUAyc/s1600/Leonardo%2BDiCaprio%2Bas%2BRomeo%2BMontague%2Bin%2BBaz%2BLuhrmann's%2BRomeo%2B%2B%2BJuliet%2B21.png", movie_id: 2)

Movie.create(title: "Pan's Labyrinth", year: 2006, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTU3ODg2NjQ5NF5BMl5BanBnXkFtZTcwMDEwODgzMQ@@._V1_SX640_SY720_.jpg")
Trailer.create(title: "Pan's Labyrinth Full-Length Trailer", embed_url: "EqYiSlkvRuw", movie_id: 3)
Character.create(name: "Ofelia", photo_url: "http://ilarge.listal.com/image/1357729/968full-pan%27s-labyrinth-screenshot.jpg", movie_id: 3)



