class MoviesController < ActionController::Base
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def create
    Movie.create(
      title: params[:title],
      year: params[:year],
      poster_url: params[:poster_url])
    redirect_to ("/movies")
  end

  private

end
