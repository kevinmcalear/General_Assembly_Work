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
    Character.create({
      name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id]
      })
    redirect_to("/movies/#{params[:movie_id]}/characters")
  end


end
