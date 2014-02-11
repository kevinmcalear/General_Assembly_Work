class TrailersController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @trailers = Trailer.find_by(movie_id: params[:movie_id])
    render(:index)
  end

  def show
    @trailer = Trailer.find(params[:id])
    render(:show)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    Trailer.create(title: params[:title], embed_url: params[:embed_url], movie_id: @movie.id)
  end
  
end
