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

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.characters.create(character_params())
    redirect_to ("/movies/#{ @movie.id }/characters")
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private

  def character_params
    return {
      name: params[:name],
      photo_url: params[:photo_url]
    }
  end

end