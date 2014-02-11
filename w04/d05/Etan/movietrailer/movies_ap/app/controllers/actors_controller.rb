class ActorsController < ApplicationController
  def index
    @actors = Actor.where(movie_id: params[:movie_id])
    @movie = params[:movie_id]
    render(:index)
  end

  def new
    @movie = params[:movie_id]
    render(:new)
  end

  def create
    Actor.create({name: params[:name], photo_url: params[:photo_url], movie_id: params[:movie_id]})
    redirect_to("/movies")
  end

end