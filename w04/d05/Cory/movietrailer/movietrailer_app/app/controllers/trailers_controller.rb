class TrailersController < ApplicationController
self.before_action(:load_trailer, { only: [:show, :edit, :update, :destroy] })


  def index
    @trailers = Trailer.where(movie_id: params[:movie_id])
    render(:index)
  end

  def new
    render(:new)
  end

  def create
      Trailer.create({title: params[:title], 
      embed_url: params[:embed_url], 
      movie_id: params[:movie_id],
      })
    redirect_to ("/movies/#{params[:movie_id]}/trailers")
  end

  def show
    render(:show)
  end

  def edit
  end

  def update
    @trailer.update({title: params[:title], 
      embed_url: params[:embed_url], 
      })
    redirect_to ("/movies/#{params[:movie_id]}/trailers")
  end

  def destroy
    @trailer.destroy
    redirect_to("/movies")
  end

  def load_trailer
    @trailer = Trailer.find(params[:id])
  end

end