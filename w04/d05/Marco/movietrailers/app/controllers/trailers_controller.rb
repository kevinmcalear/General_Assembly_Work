class TrailersController < ApplicationController

  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    @trailer_movie = Movie.find(params[:movie_id])
    render(:index)
  end

end
