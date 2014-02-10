class CharactersController < ApplicationController
  self.before_action(:load_characters, {only: [:show,:update,:destroy]})

  def show
    render(:show) 
  end 
  def create
    # @characters = Character.where(movies_id: params[:id])
    # @trailer = Trailer.find_by(movies_id: params[:id])
    Character.create(character_params)
    redirect_to(:back)
  end 
  def update
    @character.update(character_params)
    redirect_to(:back)
  end
  def destroy
    @character.destroy
    redirect_to("/movies")
  end 

  private
  def load_characters
    @character = Character.find(params[:id])
  end 

  def character_params
    return {
      name: params[:name], 
      actor: params[:actor], 
      photo_url: params[:photo_url],
      gender: params[:gender],
      movies_id: params[:movies_id]
    }
  end 


end