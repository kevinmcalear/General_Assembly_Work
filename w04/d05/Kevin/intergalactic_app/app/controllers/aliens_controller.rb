class AliensController < ApplicationController
  def index
    @spaceship = Spaceship.find(params[:spaceship_id])
    @aliens = @spaceship.aliens.all
    render(:index)
  end

  def show
    @spaceship = Spaceship.find(params[:spaceship_id])
    @alien = @spaceship.aliens.find(params[:id])
    render(:show)
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @spaceship.aliens.create(
      appendages: params[:appendages], 
      origin: params[:origin], 
      name: params[:name], 
      organic_substrate: params[:organic_substrate], 
      weakness: params[:weakness], 
      photo_url: params[:photo_url],
      strength: params[:strength]
      )
    redirect_to("/spaceships/#{@spaceship.id}/aliens")
  end 

  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @aliens = @spaceship.aliens.all
    render(:new)
  end
end 