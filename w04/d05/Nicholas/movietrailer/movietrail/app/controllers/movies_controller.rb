class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @sorted_movies = @movies.sort
    render(:index)
  end  

  def show
    @movie = Movie.find(params[:id])
  render (:show)
  end

  def new
    render(:new)
  end

  def create
    Movie.create(title: params[:title], year: params[:photo_url], poster_url: params[:poster_url] )
    redirect_to('/movies')
  end

  def edit
    @movie = Movie.find(params[:id])
    render(:edit)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(title: params[:title], year: params[:photo_url], poster_url: params[:poster_url])
    redirect_to('/movies')
  end

  def destroy
  @movie = Movie.find(params[:id])
  @movie.destroy
  redirect_to('/movies')
  end

end
