class MoviesController < ApplicationController

def index
  @movies = Movie.all
end

def create
  @movie = Movie.new(movie_params)
  @movie.poster = poster(@movie.title)
  @movie.save
  render json: @movie

end

def poster(title)
  separate_movie_name = title.gsub(" ", "%20")
  return JSON(HTTParty.get("http://www.omdbapi.com/?i=&t=" + separate_movie_name))
  poster = response("Poster")
  return poster

end

def update
end

def destroy
end

end

private

def movie_params
  params.require(:movie).permit(:title, :seen)
end

