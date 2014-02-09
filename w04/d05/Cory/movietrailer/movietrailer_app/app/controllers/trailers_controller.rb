class TrailersController < ApplicationController

  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    render(:index)
  end

  def new
    render(:new)
  end

  def create
      Trailer.create({title: params[:title], 
      embed_url: params[:embed_url], 
      movie_id: params[:movie_id],
      })
    redirect_to ("/movies/#{params[:movie_id]}/trailers")
  end

  def show
    @trailers = Trailer.find(params[:id])
    render(:show)
  end

  def edit
    @trailer = Trailer.find(params[:id])
  end

  def update
    @trailer = Trailer.find(params[:id])
    @trailer.update({title: params[:title], 
      embed_url: params[:embed_url], 
      })
    redirect_to ("/movies/#{params[:movie_id]}/trailers")
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to("/movies")
  end

end