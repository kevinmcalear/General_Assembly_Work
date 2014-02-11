# characters_controller.rb
class CharactersController < ApplicationController
  def index
    @characters = Character.where(movie_id: params[:movie_id])
    @movie = Movie.find(params[:movie_id])
    render(:index)
  end

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def create
    Character.create({name: params[:name],  photo_url: params[:photo_url], movie_id: params[:movie_id]})
    redirect_to("/movies")
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @character = Character.find(params[:id])
    render(:edit)
  end 

    def update
    @character = Character.find(params[:id])
    @character.update({name: params[:name], photo_url: params[:photo_url]})
    redirect_to("/movies/#{@character.movie_id}")
    end
end