class MoviesController < ActionController::Base
  
  def index
    @movies = Movie.all
  end

  

  private

end
