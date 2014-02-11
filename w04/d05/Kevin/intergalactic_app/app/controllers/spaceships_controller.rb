class SpaceshipsController < ApplicationController
  before_action(:load_spaceship, only: [:show, :edit, :update, :destory])

  def index
    @spaceships = Spaceship.all
    render(:index)
  end
  
  def show
    # @spaceship = Spaceship.find(params[:id])
    render(:show)
  end

  def create

    Spaceship.create(spaceship_params)
    redirect_to("/spaceships")
  end 

  def new
    @spaceships = Spaceship.all
    render(:new)
  end

  def load_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

  def spaceship_params
    {
      name: params[:name],
      capacity: params[:capacity],
      origin: params[:origin], 
      species_allow: params[:species_allow],
      photo_url: params[:photo_url],
      purpose: params[:purpose]
      }
  end
end 