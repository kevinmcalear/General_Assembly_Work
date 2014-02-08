class AliensController < ActionController::Base
  def index
    @spaceship = Spaceship.find(params[:spaceship_id])
    @aliens = @spaceship.aliens.all
    render(:index)
  end

  def create
    @alien = Alien.create(
      name: params[:name],
      species: params[:species],
      strength: params[:strength],
      spaceship_id: params[:spaceship_id])

    redirect_to "/spaceships/#{params[:spaceship_id]}/aliens/#{@alien.id}"
  end

  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    render(:new)
  end

  def show
    @spaceship = Spaceship.find(params[:spaceship_id])
    @alien = @spaceship.aliens.find(params[:id])
  end
end