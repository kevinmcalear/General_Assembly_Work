class CharactersController < ApplicationController
  self.before_action(:load_character, { only: [:edit, :update, :destroy] })
  def new
    render(:new)
  end

  def load_character
    @character = Character.find(params[:id])
  end

  def create
    Character.create(character_params)
    redirect_to("/movies")
  end

  def character_params
    return {
      name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id]
    }
  end
end