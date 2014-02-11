class AliensController < ApplicationController
  def index
    @aliens = Alien.where(spaceship_id: params[:spaceship_id])
    render(:index)
  end


  def show
   @aliens = Alien.where(params[:id])
    render(:show)
  end

  def new
    render(:new)
  end

  def create
    Alien.create(name: params[:name], appendages: params[:appendages], organic_substrate: params[:organic_substrate], weakness: params[:weakness], strength: params[:strength], spaceship_id: params[:spaceship_id])
    redirect_to('/aliens')
  end

end