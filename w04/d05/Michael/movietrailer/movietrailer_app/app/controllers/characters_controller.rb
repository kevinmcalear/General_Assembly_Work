class CharactersController < ApplicationController
  def show
    @character = Character.find_by(id: params[:id])
    render(:show) 
  end 
  def create
    @movie = Movie.find_by(id: params[:id])
    @characters = Character.where(movies_id: params[:id])
    @trailer = Trailer.find_by(movies_id: params[:id])
    Character.create({name: params[:name], actor: params[:actor], 
      photo_url: params[:photo_url],
      gender: params[:gender],
      movies_id: params[:movies_id]})
    redirect_to(:back)
  end 
end