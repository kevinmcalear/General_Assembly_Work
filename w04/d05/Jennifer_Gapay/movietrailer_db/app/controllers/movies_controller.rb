class MoviesController < ApplicationController

  def index
    @movie= Movie.all
    @trailers = Trailer.all
    render(:index)
  end

  def show
    @movies= Movie.all
    @characters = Character.find(params[:id])
    render(:show)
  end

  # def new
  #   render(:new)
  # end

  # def create
  #   Spaceship.create({name: params[:name], origin: params[:origin], capacity: params[:capacity], purpose: params[:purpose], photo_url: params[:photo_url]})
  #   redirect_to("/spaceships")
  # end


end