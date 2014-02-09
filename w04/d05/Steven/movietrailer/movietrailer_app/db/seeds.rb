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

Movie.create(title: "The Big Lebowski", year: 1998 , poster_url:"http://static.rogerebert.com/uploads/movie/movie_poster/the-big-lebowski-1998/large_aHaVjVoXeNanfwUwQ92SG7tosFM.jpg")
Character.create(name: "The Dude", photo_url:"http://themacguffinmen.com/wp-content/uploads/2013/08/lebowski1.jpg", movie_id: 16)
Character.create(name: "Walter", photo_url:"http://5plitreel.files.wordpress.com/2011/06/biglebowski2.jpg", movie_id: 16)

Trailer.create(title: "The Big Lebowski", embed_url: "http://www.youtube.com/embed/ngV0RBhGZmE", movie_id: 16)

Movie.create(title: "This Is Spinal Tap", year: 1984, poster_url:"http://cinemakc.com/wp-content/uploads/2011/10/this-is-spinal-tap.jpeg")
Character.create(name: "Nigel Tufnel", photo_url:"http://collider.com/wp-content/image-base/Movies/S/Spinal_Tap/This%20is%20Spinal%20Tap%20movie%20image%20(4).jpg", movie_id: 17)
Character.create(name: "Derrick Smalls", photo_url:"http://wodumedia.com/wp-content/uploads/2012/10/Harry-Shearer-as-bass-player-Derek-Smalls-in-This-Is-Spinal-Tap-1984-re-released-by-MGM-in-2000-5.jpg", movie_id: 17)

Trailer.create(title: "This Is Spinal Tap", embed_url: "http://www.youtube.com/embed/z6F0VyKp4Ik", movie_id: 17)


Movie.create(title: "My Blue Heaven", year: 1990, poster_url:"http://wac.450f.edgecastcdn.net/80450F/screencrush.com/files/2012/06/blue-heaven.jpg")
Character.create(name: "Vinnie", photo_url:"http://4.bp.blogspot.com/-Jp72ZE9QYWs/UjCkElnK4CI/AAAAAAAA6ms/taiY7Z23Hxw/s1600/MyBlueHeaven-Still5.jpg", movie_id: 18)
Character.create(name: "Barney", photo_url:"http://brianorndorf.typepad.com/.a/6a00e54ee7b64288330133f33b3b72970b-500wi", movie_id: 18)

Trailer.create(title: "My Blue Heaven", embed_url: "http://www.youtube.com/embed/IYwwQbkn83c", movie_id: 18)
