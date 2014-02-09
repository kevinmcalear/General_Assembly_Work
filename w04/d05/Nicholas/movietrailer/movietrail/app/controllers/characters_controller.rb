class CharactersController < ApplicationController

def index
  @movie = Movie.find(params[:movie_id])
  @characters = Character.where(movie_id: params[:movie_id])
  render(:index)
end

end