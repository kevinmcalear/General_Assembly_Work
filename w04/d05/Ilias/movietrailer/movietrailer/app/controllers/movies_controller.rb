class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Movie.create(
      title: "#{params[:title]}",
      year: "#{params[:year]}",
      poster_url: "#{params[:poster_url]}"
    )
    redirect_to("/movies")
  end

  def show

  end

end
