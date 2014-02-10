class TrailersController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @trailers = @movie.trailers.all
    render(:index)
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @trailer = @movie.trailers.find(params[:id])
    render(:show)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.trailers.create(trailer_params())
    redirect_to ("/movies/#{ @movie.id }/trailers")
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private

  def trailer_params
    return {
      title: params[:title],
      embed_url: params[:embed_url]
    }
  end

end