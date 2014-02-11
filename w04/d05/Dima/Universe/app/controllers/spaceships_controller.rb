class SpaceshipsController < ApplicationController
  # run load_spaceship method only if methods in brackets are called and before them
  self.before_action(:load_spaceship, {only: [:show, :edit, :update, :destroy]})
  def index
    @ship = Spaceship.all
    render(:index)
  end

  def show
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
    redirect_to("/spaceship/#{@spaceship.id}")
  end

  private #methods below are available only within this class

  def load_spaceship
    @Spaceship = Spaceship.find(params[:id])
  end
end