class SpaceshipsController < ApplicationController
  def index
    @spaceship = Spaceship.all
    render(:index)
  end
  def show
    @spaceship = Spaceship.find_by(id: params[:id])
    @aliens = Alien.where(spaceships_id: params[:id])
    render(:show)
  end 
  def destroy
    @spaceship = Spaceship.find_by(id: params[:id])
    redirect_to("/spaceships")
  end 

  def create
    Spaceship.create({name: params[:name], capacity: params[:capacity], photo_url: params[:photo_url]})
    redirect_to("/spaceships")
  end 

end 