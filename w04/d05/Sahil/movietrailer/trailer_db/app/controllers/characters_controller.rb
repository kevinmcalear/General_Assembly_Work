class CharactersController < ApplicationController
  def index
    @movie = Movie.find_by(id: params[:movie_id])
    @characters = @movie.characters
    render(:index)
  end
  def show
    @movie = Movie.find_by(id: params[:movie_id])
    @character = @movie.characters.find_by(id: params[:id])
    render(:show)
  end
  def new
    render(:new)
  end
  def create
    # @movie = Movie.find_by(title: params[:movie])
    @character = Character.create(name: params[:name], photo_url: params[:photo_url], movie_id: :movie_id)
    redirect_to("/movies/#{:movie_id}/characters/#{@character.id}")
  end
end