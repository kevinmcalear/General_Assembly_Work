movie_controller.rb

class MovieController < ApplicationController

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
    redirect_to("/spaceships")
  end

  def edit
    render(:edit)
  end

  def update
    @movie.update(movie_params)
    redirect_to("/spaceships/#{@spaceship.id}")
  end

  def destroy
    @movie.destroy
    redirect_to("/spaceships")
  end

  private

  def movie_params
    return {
      title: params[:title],
      year: params[:year],
      poster_url: params[:poster_url],
    }
  end
end