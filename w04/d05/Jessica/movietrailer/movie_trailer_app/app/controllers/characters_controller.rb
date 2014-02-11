class CharactersController < ApplicationController

  def index
    @characters = Character.where(movie_id: params[:movie_id])
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @characters = @movie.characters.create({
      name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id]
      })
    redirect_to("movies/#{params[:movie_id]}/characters")
  end

  def show
    @character = Character.find(params[:id])
    render(:show)
  end

  def edit
    @character = Character.find(params[:id])
    render(:edit)
  end

  def update
    @character = Character.find(params[:movie_id])
    @character.update(name: params[:name],
      photo_url: params[:photo_url],
      movie_id: params[:movie_id]
      )
    redirect_to("/movies/#{@character.movie_id}/characters/#{@character.id}")
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to("/movies/#{params[:movie_id]}/characters")
end

end