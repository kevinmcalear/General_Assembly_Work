class TrailersController < ApplicationController
  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    @movie = Movie.find(params[:movie_id])
    render(:index)
  end  

  def show
    @movie = Movie.find(params[:movie_id])
    @trailer = Trailer.find(params[:id])
    render(:show)
  end

  def new
    @movie=Movie.find(params[:movie_id])
    render(:new)
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @trailer = Trailer.find(params[:id])
    render(:edit)
  end

  def create
    @trailer = Trailer.create({
      title: params[:title],
      embed_url: params[:embed_url],
      movie_id: params[:movie_id]
      })
    redirect_to("/movies/#{params[:movie_id]}/trailers/")
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @trailer = Trailer.find(params[:id])
    @trailer.update({
      title: params[:title],
      embed_url: params[:embed_url],
      movie_id: params[:movie_id]
      })
    redirect_to("/movies")
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @trailer = Trailer.find(params[:id])
    @trailer.destroy
    redirect_to("/movies/#{params[:movie_id]}/trailers/")
  end

end