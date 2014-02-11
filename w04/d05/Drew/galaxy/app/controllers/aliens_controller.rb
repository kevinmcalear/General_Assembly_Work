class AliensController < ApplicationController

  def index
   @spaceship = Spaceship.find_by(id: params[:spaceship_id])
   @aliens = @spaceship.aliens
    render(:index)
  end

  def show
    @spaceship = Spaceship.find_by(id: params[:spaceship_id])
    @alien = @spaceship.aliens.find_by(id: params[:id])
    render(:show)
  end

end