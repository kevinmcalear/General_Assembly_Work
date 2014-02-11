class TrailersController < ActionController::Base

  self.before_action :load_movie
  # , only: [:index, :show, :new, :create, :edit, :update, :destroy]

  self.before_action :load_trailer, only: [:show, :edit, :update, :destroy]

  def index
    @trailers = @movie.trailers.all
  end

  def show
  end

  def new
  end

  def create
    @trailer = Trailer.create(trailer_params)
    redirect_to "/movies/#{@movie.id}/trailers/#{@trailer.id}"
  end

  def edit
  end

  def update
    @trailer.update(trailer_params)
    redirect_to "/movies/#{@movie.id}/trailers/#{@trailer.id}"
  end

  def destroy
    @trailer.destroy
    redirect_to "/movies/#{@movie.id}/trailers"
  end



  private

    def load_movie
      @movie = Movie.find(params[:movie_id])
    end

    def load_trailer
      @trailer = @movie.trailers.find(params[:id])
    end

    def trailer_params
      return {
        title: params[:title],
        embed_url: params[:embed_url],
        movie_id: params[:movie_id]
      }
    end

end