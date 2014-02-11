class TrailersController < ApplicationController
  def index
    @trailers = Trailer.where(movie_id: params[:movie_id].to_i)
    render(:index)
  end

  def show
    @trailer = Trailer.find(params[:id])
    render(:show)
  end

  def create
    Trailer.create( {
      title: params[:title],
      embed_url: params[:embed_url],
      movie_id: params[:movie_id]
      } )
    redirect_to("/movies/#{params[:movie_id]}")
  end

  def edit
    @trailer = Trailer.find(params[:id])
    render(:edit)
  end

  def update
    @trailer = Trailer.find(params[:id])
    @trailer.update({
      title: params[:title],
      embed_url: params[:embed_url],
      movie_id: Movie.find_by(title: params[:movie])
      })
    redirect_to("/movies/#{@trailer.movie_id}")
  end

  def destroy
    @trailer = Trailer.find(params[:id])
    @trailer.destroy
    redirect_to("/movies")
  end
end