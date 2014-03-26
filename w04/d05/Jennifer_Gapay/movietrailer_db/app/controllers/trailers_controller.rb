
class MoviesController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @trailer = @movie.trailers.all
  render(:index)
  end

  def show
    @trailer = Trailer.movie.find(params[:id])
    render(:show)
  end


end    