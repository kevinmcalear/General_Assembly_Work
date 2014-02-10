class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render(:index)
  end

  def show
    @movie = Movie.find(params[:id])
    render(:show)
  end

  def new
    render(:new)    
  end

  def create
    Movie.create(movie_params)
    redirect_to("/movies")
  end

  def edit
    @movie = Movie.find(params[:id])
    render(:edit)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to("/movies")
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to("/movies")
  end

  private

  def movie_params
    return {
      title: params[:title],
      year: params[:year],
      poster_url: params[:poster_url]
    }
  end

end