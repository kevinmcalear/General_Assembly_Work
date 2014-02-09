# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Trailer.create(title: "Hackers", embed_url: "http://www.youtube.com/watch?v=Ql1uLyuWra8", movie_id: 28)
Trailer.create(title: "Lion King", embed_url: "http://www.youtube.com/watch?v=4sj1MT05lAA", movie_id: 29)

Character.create(name: "Simba", photo_url: "http://images.wikia.com/lionking/images/archive/a/ac/20120726174001!Simba-the-lion-king-18570464-1223-720.jpg", movie_id: 29)
Character.create(name: "Nala", photo_url: "http://images1.wikia.nocookie.net/__cb20120901192012/jadensadventures/images/b/b4/Nala-simba-s-pride-nala-5306768-500-379.jpg", movie_id: 29)

Character.create(name: "Johnny", photo_url: "http://mattcarterauthor.weebly.com/uploads/1/9/5/2/19525625/7578867_orig.jpg", movie_id: 27)
Character.create(name: "Denny", photo_url: "http://dailygrindhouse.com/wp-content/uploads/2013/08/Room3.jpg", movie_id: 27)

Character.create(name: "Kate Libby", photo_url: "http://i500.listal.com/image/1465931/500full.jpg", movie_id: 28)
Character.create(name: "Dade Murphy", photo_url: "http://www.moviestarspicture.com/photos/jonny-lee-miller-movies/Jonny-Lee-Miller-Hackers-1995.jpg", movie_id: 28)
