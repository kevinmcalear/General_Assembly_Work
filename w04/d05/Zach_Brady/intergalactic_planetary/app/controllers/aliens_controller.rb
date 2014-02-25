class AliensController < ApplicationController
  def index
    @aliens = Alien.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Alien.create({
      num_appendages: params[:num_appendages],
      origin: params[:origin],
      name: params[:name],
      organic_substrate: params[:organic_substrate],
      weakness: params[:weakness],
      powers: params[:powers],
      spaceship_id: params[:spaceship_id]
      })
    redirect_to("/aliens")
  end


  def show
    @alien = Alien.find(params[:id])
    render(:show)
  end
end