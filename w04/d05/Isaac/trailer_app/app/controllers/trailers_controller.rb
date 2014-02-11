class TrailersController < ApplicationController

  self.before_action(:load_trailer, { only: [:show, :edit, :update, :destroy] })

  def index
    Trailer.all
    render(:index)
  end

  def create
    Trailer.create(trailer_params)
    redirect_to("/movies/#{params[:movie_id]}")
  end

  def show
    render(:show)
  end

  def destroy
    @trailer.destroy
    redirect_to("/movies/#{params[:movie_id]}")
  end

  def new
    render(:new)
  end

  def edit
    render(:edit)
  end

  def update
   @trailer.update(trailer_params)
   redirect_to("/movies/#{params[:movie_id]}")
 end

 def load_trailer
  @trailer = Trailer.find(params[:id])
end

def trailer_params
  return {
    title: params[:title],
    embed_url: params[:embed_url],
    movie_id: params[:movie_id]
  }
end

end