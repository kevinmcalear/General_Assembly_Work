class CharactersController < ApplicationController

  def index
    @characters = Character.all
    render(:index)
  end

  def show
    @character = Character.find_by(id: params[:id])
    render(:show)
  end

  def new
    @movies = Movie.all
    render(:new)
  end

  def create
    Character.create({
      name: params[:name],
      photo_url: params[:photo_url],
      })
  end

  def edit
    @character = Character.find_by(id: params[:id])
    render(:edit)
  end

  def update
    @character = Character.find_by(id: params[:id])
    @character.update({
      name: params[:name],
      photo_url: params[:photo_url]
      })
    redirect_to("/characters/#{@character.id}")
  end

  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy
    redirect_to("/characters")
  end
end


