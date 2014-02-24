class AliensController < ApplicationController
   def index
    @aliens = Alien.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Spaceship.create({
      name: params[:name],
      capacity: params[:capacity],
      origin: params[:origin],
      photo_url: params[:photo_url],
      purpose: params[:purpose]
      })
    redirect_to("/spaceships")
  end

  def show
    @spaceships = Spaceship.find(params[:id])
    render(:show)
  end
end
