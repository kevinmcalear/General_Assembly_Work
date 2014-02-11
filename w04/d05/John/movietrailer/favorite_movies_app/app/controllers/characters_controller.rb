class CharactersController < ActionController::Base
  
  self.before_action :load_movie
  # , only: [:index, :show, :new, :create, :edit, :update, :destroy]
  self.before_action :load_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = @movie.characters.all
  end

  def show
  end

  def new
  end

  def create
    @character = Character.create(character_params)
    redirect_to "/movies/#{params[:movie_id]}/characters/#{@character.id}"
  end

  def edit
  end

  def update
    @character.update(character_params)
    redirect_to "/movies/#{@movie.id}/characters/#{@character.id}"
  end

  def destroy
    @character.destroy
    redirect_to "/movies/#{@movie.id}/characters"
  end

  private

    def load_movie
      @movie = Movie.find(params[:movie_id])
    end

    def load_character
      @character = @movie.characters.find(params[:id])
    end

    def character_params
      return {
        name: params[:name],
        photo_url: params[:photo_url],
        movie_id: params[:movie_id]
      }
    end

end