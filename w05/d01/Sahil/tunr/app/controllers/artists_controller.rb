class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render(:index)
  end
  def show
    @artist = Artist.find_by(id: params[:id])
    @songs = @artist.songs.all
    render(:show)
  end
  def new
    @artist = Artist.find_by(id: params[:id])
    render(:new)
  end
  def create
    Artist.create(name: params[:name], genre: params[:genre], photo_url: params[:photo_url])
    redirect_to(:artists)
  end
  def edit
    @artist = Artist.find(params[:id])
    render(:edit)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(
      name: params[:name],
      genre: params[:genre],
      photo_url: params[:photo_url]
      )
    redirect_to("/artists/#{@artist.id}")
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to("/artists")
  end
end