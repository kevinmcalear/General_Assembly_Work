class TrailersController < ApplicationController
  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    render(:index)
 end
 def show
  @trailer = Trailer.find(params[:id])
  render(:show)
end

end
