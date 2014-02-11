class TrailersController < ApplicationController

  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    render(:index)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.trailers.create(
      title: params[:title],
      embed_url: params[:embed_url]
      )
    redirect_to("/movies/#{params[:movie_id]}/trailers")
  end

  def show
    @trailer = Trailer.find(params[:id])
    render(:show)
  end

  def edit
    @trailer = Trailer.find(params[:id])
    render(:edit)
  end

  def update
    @trailer = Trailer.find(params[:id])
    @trailer.update(title: params[:title],
      embed_url: params[:embed_url],
      movie_id: params[:movie_id]
      )
    redirect_to("/movies/#{@trailer.movie_id}/trailers/#{@trailer.id}")
  end

  def destroy
    @trailer = Trailer.find(params[:id])
    @trailer.destroy
    redirect_to("/movies/#{params[:movie_id]}/trailers")
end

end
