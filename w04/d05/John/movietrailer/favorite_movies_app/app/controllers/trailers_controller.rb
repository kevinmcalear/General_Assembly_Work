class TrailersController < ActionController::Base



  def index
    @movie = Movie.find(params[:movie_id])
    @trailers = @movie.trailers.all
  end

end