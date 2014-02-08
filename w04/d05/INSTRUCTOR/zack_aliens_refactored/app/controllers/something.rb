class AliensController < ApplicationController
  def index
    @aliens = Alien.where(spaceship_id: params[:spaceship_id])
    @spaceship = Spaceship.find(params[:spaceship_id])
    render (:index)
  end

  def show
    @alien = Alien.find(params[:id])
    render(:show)
  end

  def create
    @aliens = Alien.create ({
      name: params[:name],
      appendages: params[:appendages],
      origin: params[:origin],
      strength: params[:strength],
      weakness: params[:weakness],
      spaceship_id: params[:spaceship_id],
      organic_substrate: params[:organic_substrate]
    })
    redirect_to("/spaceships")
  end

  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    render(:new)
  end  
end