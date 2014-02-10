class CharactersController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @characters = @movie.characters.all
    render(:index)
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @character = @movie.characters.find(params[:id])
    render(:show)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.characters.create(
      name: params[:name], 
      photo_url: params[:photo_url]
      )
    redirect_to("/movies/#{@movie.id}/characters")
  end 

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def edit
  @movie = Movie.find(params[:movie_id])
  @character = @movie.characters.find(params[:id])
  render(:edit)
  end

def update
  @movie = Movie.find(params[:movie_id])
  @character = @movie.characters.find(params[:id])
  @character.update(
    name: params[:name],
    photo_url: params[:photo_url]
  )
  redirect_to("/movies/#{@movie.id}/characters")
end
def destroy
  @movie = Movie.find(params[:movie_id])
  @character = @movie.characters.find(params[:id])
  @character.destroy
  redirect_to("/movies/#{@movie.id}/characters")
end
end 