class AliensController < ApplicationController
  def index
    @aliens = Alien.where(spaceship_id: params[:spaceship_id])
    render(:index)
  end

  def new
    #@spaceship = Spaceship.find(params[:id])
    render(:new)
  end

  def create
    #@spaceship = Spaceship.find(params[:spaceship_id])
    Alien.create({name: params[:name], 
      appendages: params[:appendages], 
      origin: params[:origin],
      organic_substrate: params[:organic_substrate],
      weakness: params[:weakness],
      strength: params[:strength],
      spaceship_id: params[:spaceship_id]
      })
    redirect_to ("/spaceships/#{params[:spaceship_id]}/aliens")
  end

  def show
    @alien = Alien.find(params[:id])
    render(:show)
  end

  def edit
    @alien = Alien.find(params[:id])

  end

  def update
    @alien = Alien.find(params[:id])
    @alien.update({name: params[:name], 
      appendages: params[:appendages], 
      origin: params[:origin],
      organic_substrate: params[:organic_substrate],
      weakness: params[:weakness],
      strength: params[:strength],
      spaceship_id: params[:spaceship_id]
      })
    redirect_to ("/spaceships/#{params[:spaceship_id]}/aliens")
  end

  def destroy
    @alien.destroy
    redirect_to("/spaceships")
  end

end
