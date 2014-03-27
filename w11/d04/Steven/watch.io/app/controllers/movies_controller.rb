class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies
  end

  def create
    @movie = Movie.new(movie_params)
    # @movie.poster =  
    @movie.save
    render json: @movie
  end



  private

  def movie_params
    params.require(:movie).permit(:title, :seen)
  end
end