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

  def new
    @movies = Movie.all
    render(:new)
  end

  def create
    char = Character.create(char_params)
    redirect_to("/movies/#{params[:movie_id]}/characters/#{params[:id]}")
  end

  def edit
    @char = Character.find(params[:id])
    render(:edit)
  end

  def update
    @char = Character.find(params[:id])
    @char.update(char_params)
    redirect_to("/movies/#{@char.movie_id}/characters/#{@char.id}")
  end

  def destroy
    @char = Character.find(params[:id])
    @char.destroy
    redirect_to("/movies/#{params[:movie_id]}/characters")
  end

  private

  def char_params
    return {
      name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id].to_i
    }
  end
end
