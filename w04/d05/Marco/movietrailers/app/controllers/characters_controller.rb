class CharactersController < ApplicationController

  def index
    @characters = Character.where(movie_id: params[:movie_id])
    @character_movie = Movie.find(params[:movie_id])
    render(:index)
  end
end
