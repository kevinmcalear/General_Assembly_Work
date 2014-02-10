class MoviesController < ApplicationController
  
  def index
    @trailers = Trailer.all
    @movies = Movie.all
    render(:index)
  end

  def new 
    render(:new)
  end

  def create
    Movie.create({
      title: params[:title],
      year: params[:year],
      poster_url: params[:poster_url]
      })
    redirect_to("/movies")
  end

  def show
    @movie = Movie.find(params[:id])
    render(:show) 
  end

  def edit
    @movie = Movie.find(params[:id])
    render(:edit)
  end
  
  def update #http://localhost:3000/movies/18/edit
    @movie.update({
      title: params[:title],
      year: params[:year],
      poster_url: params[:poster_url]
      })
    redirect_to("/movies/#{@movie.id}")
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to("/movies")
  end
end