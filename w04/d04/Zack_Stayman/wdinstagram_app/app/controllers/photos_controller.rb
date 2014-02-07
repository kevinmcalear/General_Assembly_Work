class PhotosController < ApplicationController
  
  def index
    @photos=Photo.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Photo.create({
      author: params[:author],
      date_taken: Date.parse(params[:date_taken]),
      photo_url: params[:photo_url]
      })
      redirect_to("/photos")
  end

  def show
    @photo = Photo.find(params[:id])
    render(:show)
  end
end