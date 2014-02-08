class AliensController < ApplicationController
  def create
    @spaceship = Spaceship.find( params[:spaceship_id] )
    @spaceship.aliens.create(name: params[:name], origin: params[:origin])
    redirect_to("/spaceships")
  end
  def index
    @spaceship = Spaceship.find( params[:spaceship_id] )
    @aliens = @spaceship.aliens 
    render(:index)
  end
  def show
    @alien = Alien.find(params[:id])
    @spaceship = @alien.spaceship 
    render(:show)
  end
  def new
    @spaceships = Spaceship.all
    render(:new)
  end
  def destroy
    @alien = Alien.find(params[:id])
    @alien.destroy
    redirect_to("/spaceships")
  end
end