Movie.delete_all
Character.delete_all
Trailer.delete_all

Movie.create(
  title: "500 Days of Summer",
  year: 2009,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTk5MjM4OTU1OV5BMl5BanBnXkFtZTcwODkzNDIzMw@@._V1_SX214_.jpg"
  )

character = Movie.find_by(title: "500 Days of Summer")
Character.create(
  name: "Tom",
  photo_url: "http://content.internetvideoarchive.com/content/photos/6298/26455205_.jpg",
  movie_id: "#{character.id}")

trailer = Movie.find_by(title: "500 Days of Summer")
Trailer.create(
  title: "500 Days of Summer",
  embed_url: "//www.youtube.com/embed/PsD0NpFSADM",
  movie_id: "#{trailer.id}")

character = Movie.find_by(title: "500 Days of Summer")
Character.create(
  name: "Summer",
  photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQBIXbDrhabXUP_SIjdB1Ujra8ORJ8RSrne-R7Uek5bbdKqiC64",
  movie_id: "#{character.id}")


Movie.create(
  title: "Beginners",
  year: 2010,
  poster_url: "http://seat42f.com/images/stories/Movies/Posters/beginners_movie_poster.jpg"
  )

movie= Movie.find_by(title: "Beginners")
Character.create(
  name: "Oliver Fields",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTg1MjQ0MDg0Nl5BMl5BanBnXkFtZTcwNjYyNjI5Mg@@._V1_SX214_CR0,0,214,317_.jpg",
  movie_id: "#{movie.id}")

movie= Movie.find_by(title: "Beginners")
Character.create(
  name: "Anna",
  photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQRrsDmq_FhZJGzXegp7S9XCHxwa9uiXgvZOq-ki9YqvU2kfYMGEQ",
  movie_id: "#{movie.id}")

movie= Movie.find_by(title: "Beginners")
Trailer.create(
  title: "Beginners",
  embed_url: "//www.youtube.com/embed/rXUFUp6vsxg",
  movie_id: "#{movie.id}")

Movie.create(
  title: "Side Effects",
  year: 2013,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTc2MzY0NDAwOF5BMl5BanBnXkFtZTcwMTE1Mzc4OA@@._V1_SY317_CR0,0,214,317_.jpg"
  )

movie= Movie.find_by(title: "Side Effects")
Character.create(
  name: "Emily",
  photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ1gvXGCaF233GmrWnu9THPAAt2jQQWmhzcPUixBZOwYfN_Pajkyw",
  movie_id: "#{movie.id}")

movie= Movie.find_by(title: "Side Effects")
Character.create(
  name: "Dr. Banks",
  photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSx0uLlky93Fb3dnIfbyPVW1eRGAkNUqlW6f68aKltwtKi5YJam",
  movie_id: "#{movie.id}")

movie= Movie.find_by(title: "Side Effects")
Trailer.create(
  title: "Side Effects",
  embed_url: "//www.youtube.com/embed/8R9H87zafc0",
  movie_id: "#{movie.id}")
