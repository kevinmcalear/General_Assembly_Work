class CharactersController < ApplicationController
  def index
    @characters = Character.where(movie_id: params[:movie_id])
    @movie = Movie.find(params[:movie_id])
    render(:index)
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @character = Character.find(params[:id])
    render(:show)
  end

  def new
    @movie=Movie.find(params[:movie_id])
    render(:new)
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @character = Character.find(params[:id])
    render(:edit)
  end

  def create
    @character = Character.create({
      name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id]
      })
    redirect_to("/movies/#{params[:movie_id]}/characters/")
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @character = Character.find(params[:id])
    @character.update({
      name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id]
      })
    redirect_to("/movies")
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to("/movies/#{params[:movie_id]}/characters/")
  end

end