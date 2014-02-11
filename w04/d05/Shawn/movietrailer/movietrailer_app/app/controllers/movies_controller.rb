# movies_controller.rb

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Movie.create({title: params[:title], year: params[:year], poster_url: params[:poster_url]})
    redirect_to("/movies")
  end

  def show
    @movie=Movie.find(params[:id])
    @characters = Character.where(movie_id: @movie.id)
    @trailers = Trailer.where(movie_id: @movie.id)
    render(:show)
  end

  def edit
    @movie = Movie.find(params[:id])
    render(:edit)
  end

  def update
    @movies = Movie.find(params[:id])
    @movies.update({title: params[:title], year: params[:year], poster_url: params[:poster_url]})
    redirect_to("/movies/#{@movies.id}")
  end

  def destroy
    redirect_to("/movies")
  end
end