class SpaceshipsController < ApplicationController
  def create
    Spaceship.create( name: params[:name], capacity: params[:capacity], origin: params[:origin], species_allowed: params[:species_allowed], photo_url: params[:photo_url], purpose: params[:purpose] )
    redirect_to("/spaceships")
  end
  def new
    render(:new)
  end
  def index
    @spaceships = Spaceship.all
    render(:index)
  end
  def show
    @spaceship = Spaceship.find(params[:id])
    render(:show)
  end
  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy
    redirect_to("/spaceships")
  end
  def update
    @spaceship = Spaceship.find(params[:id])
    @spaceship.update( name: params[:name], capacity: params[:capacity], origin: params[:origin], species_allowed: params[:species_allowed], photo_url: params[:photo_url], purpose: params[:purpose] )
    redirect_to("/spaceships")
  end

end












