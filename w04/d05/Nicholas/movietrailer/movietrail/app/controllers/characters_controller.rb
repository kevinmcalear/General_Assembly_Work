class CharactersController < ApplicationController

def index
  @movie = Movie.find(params[:movie_id])
  @characters = Character.where(movie_id: params[:movie_id])
  render(:index)
end

def new
  @movie = Movie.find(params[:movie_id])
  render(:new)
end

def create
  @movie = Movie.find(params[:movie_id])
  Character.create(name: params[:name], photo_url: params[:photo_url], movie_id: @movie.id)
  redirect_to("/movies/#{@movie.id}/characters")
end

def edit
  @character = Character.find(params[:id])
  render(:edit)
end

def update
  @movie = Movie.find(params[:movie_id])
  @character = @movie.characters.find(params[:id])
  @character.update(name: params[:name], photo_url: params[:photo_url])
  redirect_to("/movies/#{@movie.id}/characters")
end

def destroy
  @movie = Movie.find(params[:movie_id])
  @character = @movie.characters.find(params[:id])
  @character.destroy
  redirect_to("/movies/#{@movie.id}/characters")
end

end