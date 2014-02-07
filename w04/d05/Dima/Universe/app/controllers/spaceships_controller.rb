class SpaceshipsController < ApplicationController
  def index
    @ship = Spaceship.all
    render(:index)
  end
end