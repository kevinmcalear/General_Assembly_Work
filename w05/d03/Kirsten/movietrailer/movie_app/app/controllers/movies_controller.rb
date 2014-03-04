class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @movies = Movie.create({
      title: params[:title],
      year: params[:year].to_i,
      poster_url: params[:poster_url]
      })
    redirect_to("/movies/show")
  end

  def show
    @movie = Movie.find(params[:id])
    render(:show)
  end

  def edit
    @movie = Movie.find(params[:id])
    render(:edit)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update ({
      title: (params[:title]),
      year: (params[:year]).to_i,
      poster_url: (params[:poster_url])
      })
    redirect_to("/movies/#{params[:id]}")
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @movie.destroy
    redirect_to("/movies")
  end
end
