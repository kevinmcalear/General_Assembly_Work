class TrailersController < ApplicationController
    def index
      @trailers = Trailer.where(movie_id: params[:movie_id])

      render(:index)
    end
    
    def new
      render(:new)
    end
    def create
      embed_url = params[:embed_url].split("=").last
      Trailer.create({
        title: params[:title],
        embed_url: embed_url,
        movie_id: params[:movie_id]
        })
      redirect_to("/movies/#{params[:movie_id]}/trailers")
    end
    def edit
      @trailer = Trailer.find(params[:id])
      render(:edit)
    end
    def update
      @trailer = Trailer.find(params[:id])
      @trailer.update({
        title: params[:title],
        movie_id: Movie.find_by(name: params[:movie]).id
        })
      redirect_to("/movies/#{@trailer.movie_id}/trailers")
    end
    def destroy
      @trailer = Trailer.find(params[:id])
      @trailer.destroy
      redirect_to("/movies/#{params[:movie_id]}/trailers")
    end
  end

