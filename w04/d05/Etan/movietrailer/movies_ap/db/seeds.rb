Movie.delete_all
Trailer.delete_all
Actor.delete_all

Movie.create(title: "Ip Man 2", year: 2010, poster_url: "http://i.imgur.com/i7oO83D.jpg")

Trailer.create(title: "Ip Man 2: Legend of the Grandmaster", embed_url: "www.youtube.com/embed/gaBdgu00otE", movie_id: 1)

Actor.create(name: "Donnie Yen", photo_url: "http://i.imgur.com/UTfkPP2.jpg", movie_id: 1)
Actor.create(name: "Darren Shahlavi", photo_url: "http://i.imgur.com/S6AdWHf.jpg", movie_id: 1)
Actor.create(name: "Lynn Hung", photo_url: "http://i.imgur.com/mpnzBIx.jpg", movie_id: 1)