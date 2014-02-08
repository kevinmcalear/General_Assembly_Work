class CharactersController < ActionController::Base
  


  def index
    @movie = Movie.find(params[:movie_id])
    @characters = @movie.characters.all
  end

  private



end