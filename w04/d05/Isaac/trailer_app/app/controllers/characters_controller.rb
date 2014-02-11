class CharactersController < ApplicationController

  self.before_action(:load_character, { only: [:show, :edit, :update, :destroy] })

  def index
    Character.all
    render(:index)
  end

  def create
    Character.create(character_params)
    redirect_to("/movies/#{params[:movie_id]}")
  end

  def show
    render(:show)
  end

  def destroy
    @character.destroy
    redirect_to("/movies/#{params[:movie_id]}")
  end

  def new
    render(:new)
  end

  def edit
    render(:edit)
  end

  def update
   @character.update(character_params)
   redirect_to("/movies/#{params[:movie_id]}")
 end

 def load_character
    @character = Character.find(params[:id])
  end

 def character_params
  return {
    name: params[:name],
    photo_url: params[:photo_url],
    movie_id: params[:movie_id]
  }
end

end