class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render(:index)
  end 
  def show
    @movie = Movie.find_by(id: params[:id])
    @characters = Character.where(movies_id: params[:id])
    @trailer = Trailer.find_by(movies_id: params[:id])
    render(:show)
  end 
  def create
  end 
end