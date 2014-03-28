class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    # respond_to do |format|
    #   format.html { render :index }
    #   format.json { render json: @movies }
    # end
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.poster =  movie_api_call(@movie.title)
    @movie.save
    render json: @movie
  end

  def movie_api_call(title)
    split_title = title.gsub(" ", "%20")
    movietitle = JSON(HTTParty.get('http://www.omdbapi.com/?t='+ split_title ))
    poster = movietitle["Poster"]
    return poster
  end

  def update
    @movie = Movie.find(params[:id])
    render json: @movie
  end


  private

  def movie_params
    params.require(:movie).permit(:title, :seen)
  end
end