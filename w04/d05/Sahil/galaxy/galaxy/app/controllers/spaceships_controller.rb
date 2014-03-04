class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all
    render(:index)
  end
  def show
    @spaceship = Spaceship.find_by(id: params[:id])
    render(:show)
  end
  def new
    render(:new)
  end
  def create
    @spaceship = Spaceship.create(name: params[:name], capacity: params[:capacity], origin: params[:origin], species_allowed: params[:species_allowed], photo_url: params[:photo_url], purpose: params[:purpose])
    redirect_to("/spaceships/#{@spaceship.id}")
  end
  def destroy
    @spaceship = Spaceship.find_by(id: params[:id]).destroy
    redirect_to("/spaceships")
  end
end