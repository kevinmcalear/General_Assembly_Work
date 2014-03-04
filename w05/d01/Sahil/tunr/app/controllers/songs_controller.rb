class SongsController < ApplicationController
  def index
    @songs = Song.all.where(artist_id: params[:artist_id])
    render(:index)
  end
def show
    @song = Song.find(params[:id])
    render(:show)
  end

  def new
    render(:new)
  end

  def create
    Song.create({
      title: params[:title],
      year: params[:year],
      artist_id: params[:artist_id]
      })
    redirect_to("/artists/#{params[:artist_id]}/songs")
  end

  def edit
    @song = Song.find(params[:id])
    render(:edit)
  end

  def update
    @song = Song.find(params[:id])
    @song.update({
      title: params[:title],
      year: params[:year],
      artist_id: params[:artist_id]
      })
    redirect_to("/artists/#{@song.artist_id}/songs")
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to("/artists/#{params[:artist_id]}/songs")
  end
end