class TrailersController < ApplicationController

  def index
    @trailer = Trailer.find_by(movie_id: params[:movie_id])
    @movie = Movie.find(params[:movie_id])
    render(:index)
  end

  def show
    @trailer = Trailer.find(params[:id])
    render(:show)
  end

  
end
