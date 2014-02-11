class TrailersController < ApplicationController
  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    @movie = params[:movie_id]
    render(:index)
  end

  def new
    @trailer = params[:movie_id]
    render(:new)
  end

  def create
    Trailer.create({title: params[:title], embed_url: params[:embed_url], movie_id: params[:movie_id]})
    redirect_to("/movies")
  end
end