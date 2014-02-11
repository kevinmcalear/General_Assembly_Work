class CharactersController < ApplicationController
self.before_action(:load_character, { only: [:show, :edit, :update, :destroy] })


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
    render(:show)
  end

  def edit
  end

  def update
    @character.update({name: params[:name], 
      photo_url: params[:photo_url], 
      })
    redirect_to ("/movies/#{params[:movie_id]}/characters")
  end

  def destroy
    @character.destroy
    redirect_to("/movies")
  end

  def load_character
    @character = Character.find(params[:id])
  end

end