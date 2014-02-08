class CharactersController < ApplicationController

  def index
    @characters = Character.where(movie_id: params[:movie_id])
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Character.create({name: params[:name], 
      photo_url: params[:photo_url], 
      movie_id: params[:movie_id],
      })
    redirect_to ("/movies/#{params[:movie_id]}/characters")
  end

  def show
    @characters = Character.find(params[:id])
    render(:show)
  end


end