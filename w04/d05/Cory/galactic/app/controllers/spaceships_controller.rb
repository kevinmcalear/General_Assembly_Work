class SpaceshipsController < ApplicationController
  self.before_action(:load_spaceship, { only: [:show, :edit, :update, :destroy] })

  def index
    @spaceships = Spaceship.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Spaceship.create({name: params[:name], 
      capacity: params[:capacity], 
      origin: params[:origin],
      species_allowed: params[:species_allowed],
      photo_url: params[:photo_url],
      purpose: params[:purpose]})
    redirect_to ("/spaceships")
  end

  def show
   # load_spaceship() dont need anymore thanks to self.before_action
    render(:show)
  end

  private

  def load_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

end


