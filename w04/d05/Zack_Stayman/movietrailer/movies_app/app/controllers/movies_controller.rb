class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render(:index)
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render(:show)
  end

  def new
    @movies = Movie.all
    render(:new)
  end

  def create
    Movie.create({
      name: params[:name],
      photo_url: params[:photo_url],
      })
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
    render(:edit)
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update({
      name: params[:name],
      photo_url: params[:photo_url]
      })
    redirect_to("/movies/#{@movie.id}")
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    redirect_to("/movies")
  end
end