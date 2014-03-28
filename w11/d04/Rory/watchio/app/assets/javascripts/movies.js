// Things you should be able to do from the JavaScript Console:

// Create a new movie that persists to the database (You will only be providing the title and seen attributes. The back-end should find the appropriate poster from the OMDB API and persist that to the database. Upon persistence, the front-end should have access to that poster)
// Update the movie in the database to change "seen" from false to true
// Delete the movie from the database

//In console

var movie_info = HTTParty.get('http://www.omdbapi.com/?t='+title)

var Movie = Backbone.Model.extend({
  urlRoot: '/movie',
  defaults: {
    title: '',
    url: movie_info[0]["Poster"],
    seen: false
  }
});

var movie = new Movie();

var movieDetails = {title: "Her", poster: movie_info[0]["Poster"], seen: false};

movie.save(movieDetails, {
  success: function (movie) {
      alert(movie.toJSON());
  }
})

movie.