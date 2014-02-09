class TrailersController < ApplicationController


  def index
    @movie = Movie.find(params[:movie_id])
    @trailers = Trailer.where(movie_id: params[:movie_id])
    render(:index)
  end


end
