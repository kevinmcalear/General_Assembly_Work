class CharactersController < ActionController::Base
  
  self.before_action :load_movie, only: [:index, :show, :edit, :update, :destroy]

  def index
    @characters = @movie.characters.all
  end

  def show
    @character = @movie.characters.find(params[:id])
  end

  private

    def load_movie
      @movie = Movie.find(params[:movie_id])
    end

end