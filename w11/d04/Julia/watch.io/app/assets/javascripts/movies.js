Movie = Backbone.Model.extend({
	urlRoot: '/movies',
	defaults: {
		title: '',
		seen: false
	}
});


//Add a movie – 
// var movie = new Movie();

// var movieDetails = {
// 	title: "Nutty Professor",
// 	poster: "poster",
// 	seen: true
// }

// movie.save(movieDetails, {
// success: function(movie) {
// alert(movie.toJSON());
// }
// })

//Update a movie – 
// var movie = new Movie({
// title: "Goldeneye",
// poster: "poster"
// });

// movie.save({title: "Moonraker"}, {
// success: function(model) {
// alert(movie.toJSON());
// }
// });

//Delete a movie – 
// var movie = new Movie({
// 	title: "The Lion King",
// 	poster: "poster 2"
// });

// movie.save();

// movie.destroy({
// 	success: function(){
// 		alert('Destroyed');
// 	}
// });







