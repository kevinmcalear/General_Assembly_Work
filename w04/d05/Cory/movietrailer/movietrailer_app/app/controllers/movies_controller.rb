class MoviesController < ApplicationController
self.before_action(:load_movie, { only: [:show, :edit, :update, :destroy] })
  
  def index
    @movies = Movie.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Movie.create({title: params[:title], 
      year: params[:year], 
      poster_url: params[:poster_url],
      })
    redirect_to ("/movies")
  end

  def show
    render(:show)
  end

  def edit
  end

  def update
    @movie.update({title: params[:title], 
      year: params[:year], 
      poster_url: params[:poster_url]
      })
    redirect_to ("/movies/#{params[:movie_id]}")
  end

  def destroy
    @movie.destroy
    redirect_to("/movies")
  end

   def load_movie
    @movie = Movie.find(params[:id])
  end

end