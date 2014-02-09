class CharactersController < ApplicationController

  def index
    @characters = Character.where(movie_id: params[:movie_id])
    @character_movie = Movie.find(params[:movie_id])
    render(:index)
  end

  def show
    @char = Character.find(params[:id])
    render(:show)
  end
end
