class AliensController < ActionController::Base
  
  self.before_action :load_spaceship, only: [:index, :new, :show, :edit, :update, :destroy]
  self.before_action :load_alien, only: [:show, :edit, :update, :destroy]
  self.before_action :load_all_aliens, only: [:index]

  def index
  end

  def create
    @alien = Alien.create(alien_params)
    redirect_to "/spaceships/#{params[:spaceship_id]}/aliens/#{params[:id]}"
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
    @alien.update(alien_params)
    redirect_to ("/spaceships/#{@spaceship.id}/aliens/#{params[:id]}")
  end

  def destroy
    @alien.destroy
    redirect_to ("/spaceships/#{@spaceship.id}/aliens")
  end

  private

    def load_spaceship
      @spaceship = Spaceship.find(params[:spaceship_id])
    end

    def load_alien
      @alien = @spaceship.aliens.find(params[:id])
    end

    def load_all_aliens
      @aliens = @spaceship.aliens.all
    end

    def alien_params
      return {
        name: params[:name],
        species: params[:species],
        strength: params[:strength],
        spaceship_id: params[:spaceship_id]
      }
    end
end