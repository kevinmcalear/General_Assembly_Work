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

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.trailers.create(
      name: params[:name], 
      embed_url: params[:embed_url]
      )
    redirect_to("/movies/#{@movie.id}/trailers")
  end 

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def edit
  @movie = Movie.find(params[:movie_id])
  @trailer = @movie.trailers.find(params[:id])
  render(:edit)
  end

def update
  @movie = Movie.find(params[:movie_id])
  @trailer = @movie.trailers.find(params[:id])
  @trailer.update(
    name: params[:name],
    embed_url: params[:embed_url]
  )
  redirect_to("/movies/#{@movie.id}/trailers")
end
def destroy
  @movie = Movie.find(params[:movie_id])
  @trailer = @movie.trailers.find(params[:id])
  @trailer.destroy
  redirect_to("/movies/#{@movie.id}/trailers")
end
end 