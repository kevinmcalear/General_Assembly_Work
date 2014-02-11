# trailers_controller.rb
class TrailersController < ApplicationController
  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    @movie = Movie.find(params[:movie_id])
    render(:index)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    Trailer.create({title: params[:title],  embed_url: params[:embed_url], movie_id: params[:movie_id]})
    redirect_to("/movies")
  end

end