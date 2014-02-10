class MoviesController < ApplicationController
  self.before_action(:load_movie, { only: [:show, :edit, :update, :destroy] })

  def index
    @movies = Movie.all
    render(:index)
  end

  def show
    render(:show)
  end

  def new
    render(:new)
  end

  def create
    Movie.create(movie_params)
    redirect_to("/movies")
  end

  def load_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    return {
      title: params[:title],
      year: params[:year],
      poster_url: params[:poster_url]
    }
  end
end