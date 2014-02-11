class CharactersController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @characters = @movie.characters
    render(:index)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.characters.create(name: params[:name], photo_url: params[:photo_url])
    redirect_to("/movies/#{params[:movie_id]}/characters")
  end

  def show
    @character = Character.find(params[:id])
    render(:show)
  end


  def edit
    @character = Character.find(params[:id])
    render(:edit)
  end

  def update
    @character = Character.find(params[:id])
    @character.update(name: params[:name], photo_url: params[:photo_url])
    redirect_to("/movies/#{@character.movie.id}/characters/#{@character.id}")
  end


  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to("/movies/#{@character.movie.id}/characters/")
  end



end