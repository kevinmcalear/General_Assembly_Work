class SpaceshipsController < ApplicationController
  self.before_action(:load_spaceship, {only: [:show, :edit, :update, :destroy]})
#call this instance method on this class before any of these actions are called
def index
  @spaceships = Spaceship.all
  render(:index)
end

def show
  @spaceship = Spaceship.find(params[:id])
  render(:show)
end

def new
  render(:new)
end

def create
  Spaceship.create({
    name: params[:name],
    capacity: params[:capacity],
    origin: params[:origin],
    species_allowed: params[:species_allowed],
    photo_url: params[:photo_url],
    purpose: params[:purpose]
    })
  redirect_to("/spaceships")
end

private
def load_spaceship 
  @spaceship = Spaceship.find(params:[:id])
end

def spaceship_params
  return {
    name: params[:name],
    capacity: params[:capacity],
    origin: params[:origin],
    species_allowed: paraspecies_allowed],
    photo_url: params[:photo_url],
    purpose: params[:purpose] 
  }
end

end