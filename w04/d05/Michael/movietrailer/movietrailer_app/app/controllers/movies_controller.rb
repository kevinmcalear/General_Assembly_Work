class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render(:index)
  end 
  def show
    @movie = Movie.find_by(id: params[:id])
    @characters = Character.where(movies_id: params[:id])
    @trailer = Trailer.find_by(movies_id: params[:id])
    render(:show)
  end 
  def create
    Movie.create({title: params[:title], year_released: params[:year_released], poster_url: params[:poster_url], genre: params[:genre], director: params[:director]})
    redirect_to("/movies")
  end 
  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      {title: params[:title], 
      year_released: params[:year_released], 
      poster_url: params[:poster_url],
      genre: params[:genre], 
      director: params[:director]
      })
    redirect_to(:back)
  end 
  def destroy
    @movie= Movie.find_by(id: params[:id])
    @movie.destroy
    redirect_to("/movies")
  end 

end