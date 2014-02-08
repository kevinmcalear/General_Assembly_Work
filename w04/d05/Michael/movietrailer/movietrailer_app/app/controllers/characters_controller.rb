class CharactersController < ApplicationController
  def show
    @character = Character.find_by(id: params[:id])
    render(:show) 
  end 
end