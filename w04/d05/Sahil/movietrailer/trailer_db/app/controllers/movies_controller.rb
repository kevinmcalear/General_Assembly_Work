class MoviesController < ActionController::Base
  def index
    @movies = Movie.all 
    render(:index)
  end
  def show
    @movie = Movie.find_by(id: params[:id])
    render(:show)
  end
  def create
    @movie = Movie.create(title: params[:title], year: params[:year].to_i, poster_url: params[:poster_url])
    redirect_to("/movies/#{@movie.id}")
  end
  def destroy
    @movie = Movie.find_by(id: params[:id]).destroy
    redirect_to("/movies")
  end
end