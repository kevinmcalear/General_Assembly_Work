class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Spaceship.create(name: params[:name], capacity: params[:capacity], origin: params[:origin], species_allowed: params[:species_allowed], photo_url: params[:photo_url], purpose: params[:purpose])
    redirect_to("/spaceships/<%=@spaceships.id %>")
  end

  def show
    @spaceship = Spaceship.find_by(id: params[:id])
    render(:show)
  end

  def destroy
     @spaceship = Spaceship.find_by(id: params[:id])
     @spaceship.destroy
     redirect_to("/spaceships")
  end

end