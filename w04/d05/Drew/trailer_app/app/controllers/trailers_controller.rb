class TrailersController <ApplicationController

  def index
    @trailers = Trailer.all
    render(:index)
  end

  def show
    @movie = Movie.find_by(id: params[:movie_id])
    @trailer = @movie.trailers.find_by(id: params[:id])
    render(:show)
  end


end