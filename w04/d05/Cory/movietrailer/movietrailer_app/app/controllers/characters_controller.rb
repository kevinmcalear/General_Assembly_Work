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

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update({name: params[:name], 
      photo_url: params[:photo_url], 
      })
    redirect_to ("/movies/#{params[:movie_id]}/characters")
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to("/movies")
  end


end