class MoviesController < ActionController::Base
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

end
