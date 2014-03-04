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
    @movie = Movie.new #added that on 15th of Feb at 3:17
    render(:new)
  end

  def create
    Movie.create(movie_params)
    redirect_to("/movies")
  end

  def edit
    render(:edit)
  end

  def update
    @movie.update(movie_params)
    redirect_to("/movies/#{params[:movie_id]}")
  end


  def destroy
    @movie.destroy
    redirect_to("/movies")
  end

  private

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