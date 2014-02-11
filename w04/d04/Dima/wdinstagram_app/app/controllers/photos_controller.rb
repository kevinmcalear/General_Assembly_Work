class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @photos = Photo.create({
      author: params[:author],
      photo_url: params[:photo_url],
      date_taken: params[:date_taken]
      })
    redirect_to("/photos")
end

def show
    @photos = Photo.find(params[:id])
    render(:show)
  end
end