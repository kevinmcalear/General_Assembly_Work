class TrailersController < ApplicationController


  def index
    @movie = Movie.find(params[:movie_id])
    @trailers = Trailer.where(movie_id: params[:movie_id])
    render(:index)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

 def create
    @movie = Movie.find(params[:movie_id])
    Trailer.create({
      title: params[:title],
      embed_url: params[:embed_url],
      movie_id: params[:movie_id]
      })
    redirect_to("/movies/#{params[:movie_id]}")
  end


end
