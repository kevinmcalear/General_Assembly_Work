class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @movie = Movie.create(
      title: "#{params[:title]}",
      year: "#{params[:year]}",
      poster_url: "#{params[:poster_url]}"
    )
    Trailer.create(
      title: "#{params[:title]}",
      embed_url: "#{params[:embed_url]}",
      movie_id: @movie.id
    )
    redirect_to("/movies/#{@movie.id}")
  end

  def show
    @movie = Movie.find("#{params[:id]}")
    trailer = Trailer.find_by(movie_id: "#{params[:id]}")
    url = trailer.embed_url
    @embed_url = url.split("=")[1]
    @characters = Character.where(movie_id: params[:id])
    render(:show)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to ("/movies")
  end

end
