class MoviesController < ApplicationController
  self.before_action(:load_movie, {only: [:show,:update,:destroy] } )

  def index
    @movies = Movie.all
    render(:index)
  end 
  def show
    @characters = Character.where(movies_id: params[:id])
    @trailer = Trailer.find_by(movies_id: params[:id])
    render(:show)
  end 
  def create
    Movie.create(movie_params)
    redirect_to("/movies")
  end 
  def update
    @movie.update(movie_params)
    redirect_to(:back)
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
      year_released: params[:year_released], 
      poster_url: params[:poster_url],
      genre: params[:genre], 
      director: params[:director]
    }
    
  end

end