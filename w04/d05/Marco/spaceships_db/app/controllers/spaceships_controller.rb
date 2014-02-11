class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
    render(:index)
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    render(:show)
  end

end