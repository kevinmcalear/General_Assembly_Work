class PicturesController < ApplicationController
  def index
    @pictures = Picture.all 
    render(:index)
  end
  def new
    render(:new)
  end
  def create
    Picture.create( { author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken] } )
    redirect_to("/pictures")
  end
  def show
    @picture = Picture.find(params[:id])
    render(:show)
  end
end