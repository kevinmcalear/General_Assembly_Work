class TrailersController < ApplicationController
  def index
    @icons = ["pavitra-s-tandon-only-goodness", " ian-yates-y-fronts", "pavitra-s-tandon-chat-for-lovers","muhamad-bahrul-ulum-log-out", "muhamad-bahrul-ulum-log-in", " justin-skull-ribbon", "justin-burns-skull", "justin-burns-skull-badge", "designmodo-settings", "designmodo-location", "designmodo-like", "cole-townsend-pencil", "cole-townsend-check", "cole-townsend-chat", "ian-yates-porridge", "ian-yates-mr-whippy", "ian-yates-milk", "aleks-dorohovich-rocket", "vincent-gschwindemann-sun", "vectortuts-pirate-panda", "sanjit-saha-afro", "samuel-sosina-command-line", "quin-robinson-casual-shoe", "juan-ortiz-zaforas-plug-f-female", "juan-ortiz-zaforas-plug-c-female", "juan-gomez-alzaga-rocking-horse", "juan-gomez-alzaga-paint-brush", "juan-gomez-alzaga-leaf", "juan-gomez-alzaga-bird", "jeffrey-herrera-beer-mug", "jack-rugile-anchor", "ilias-ismanalijev-batman", "corinne-ducusin-doumbek", "aleks-dorohovich-triforce", "steve-debeus-farm", "patrik-larsson-pokemon", "patrik-larsson-pakman", "ordog-zoltan-canon", "johana-barretto-kitty", "johana-barretto-kitty-stripy", "jj-moi-manga-poison", "jj-moi-manga-eye", "jj-moi-kneel", "dom-waters-speedo", "dom-waters-knife", "derek-mui-tie", "derek-mui-invader", "darren-reay-telephone-box", "darren-reay-pen-nib", "arno-hattingh-park", "anton-boshoff-headset", "joshua-barker-landscape", "joshua-barker-house", "jory-raphael-cart", "johan-manuel-hernandez-record-player", "danis-lou-joystick", "christina-pedersen-walkman", "christina-pedersen-cassette", "chris-spittles-unpinned", "chris-spittles-save", "chris-spittles-pinned", "chris-spittles-health", "chris-spittles-geo-location", "cesgra-globe", "matt-hakes-spectacles", "matt-hakes-moustache", "ian-yates-creative-commons"]
    @movie = Movie.find(params[:movie_id])
    @trailers = @movie.trailers.all
    render(:index)
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @trailer = @movie.trailers.find(params[:id])
    render(:show)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @movie.trailers.create(
      name: params[:name], 
      embed_url: params[:embed_url]
      )
    redirect_to("/movies/#{@movie.id}/trailers")
  end 

  def new
    @movie = Movie.find(params[:movie_id])
    render(:new)
  end

  def edit
  @movie = Movie.find(params[:movie_id])
  @trailer = @movie.trailers.find(params[:id])
  render(:edit)
  end

def update
  @movie = Movie.find(params[:movie_id])
  @trailer = @movie.trailers.find(params[:id])
  @trailer.update(
    name: params[:name],
    embed_url: params[:embed_url]
  )
  redirect_to("/movies/#{@movie.id}/trailers")
end
def destroy
  @movie = Movie.find(params[:movie_id])
  @trailer = @movie.trailers.find(params[:id])
  @trailer.destroy
  redirect_to("/movies/#{@movie.id}/trailers")
end
end 