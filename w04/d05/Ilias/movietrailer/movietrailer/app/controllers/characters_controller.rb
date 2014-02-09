class CharactersController < ApplicationController

  def index
    render(:index)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    Character.create(
      name: "#{params[:name]}",
      photo_url: "#{params[:photo_url]}",
      movie_id: params[:movie_id]
    )
    movie = Movie.find(params[:movie_id])
    redirect_to("/movies/#{movie.id}")
  end

end
