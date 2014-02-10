class SpaceshipsController < ApplicationController
  self.before_action(:load_spaceship, only: [:show, :edit, :update, :destroy])


  def index
    @spaceships = Spaceship.all
    render(:index)
  end
  
  def show
    render(:show)
  end

  def new
    @spaceships = Spaceship.all
    render(:new)
  end

  def create
    Spaceship.create(spaceship_params())
    redirect_to("/spaceships")
  end 

  def editdr
    render(:edit)
  end

  def update
    @spaceship.update(spaceship_params())
    redirect_to("/spaceships")
  end

  def destroy
    @spaceship.destroy
    redirect_to("/spaceships")
  end

  private

  def load_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

  def spaceship_params
    return {
      name: params[:name],
      capacity: params[:capacity],
      origin: params[:origin], 
      species_allow: params[:species_allow],
      photo_url: params[:photo_url],
      purpose: params[:purpose]
      }
  end

end