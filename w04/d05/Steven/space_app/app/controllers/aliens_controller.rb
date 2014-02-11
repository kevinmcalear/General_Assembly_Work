# aliens_controller.rb

class AliensController < ApplicationController

  #show all aliens associated with a spaceship
  def index
    @aliens = Alien.where(spaceship_id: params[:spaceship_id])
    render(:index)
  end


  def show
    @alien = Alien.find(params[:id])
    render(:show)
  end

  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    render(:new)
  end

  def create
    #binding.pry
    Alien.create({name: params[:name], origin: params[:origin], appendages: params[:appendages], spaceship_id: params[:spaceship_id] })
    redirect_to("/spaceships")
  end
end