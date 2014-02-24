class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Spaceship.create({name: params[:name], origin: params[:origin], capacity: params[:capacity], purpose: params[:purpose], photo_url: params[:photo_url]})
    redirect_to("/spaceships")
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    render(:show)
  end
end