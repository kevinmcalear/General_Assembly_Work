class TrailersController < ApplicationController

  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    @trailer_movie = Movie.find(params[:movie_id])
    render(:index)
  end

   def show
    @trailer = Trailer.find(params[:id])
    render(:show)
  end

  def new
    @movies = Movie.all
    render(:new)
  end

  def create
    trailer = Trailer.create(trailer_params)
    redirect_to("/movies/#{params[:movie_id]}/trailers/#{params[:id]}")
  end

  def edit
    @trailer = Trailer.find(params[:id])
    render(:edit)
  end

  def update
    @trailer = Trailer.find(params[:id])
    @trailer.update(trailer_params)
    redirect_to("/movies/#{params[:movie_id]}/trailers/#{@trailer.id}")
  end

  def destroy
    @trailer = Trailer.find(params[:id])
    @trailer.destroy
    redirect_to("/movies/#{params[:movie_id]}/trailers")
  end

  private

  def trailer_params
    return {
      title: params[:title],
      embed_url: params[:embed_url],
      movie_id: params[:movie_id].to_i
    }
  end

end
