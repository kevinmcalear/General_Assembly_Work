class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Picture.create({author: params[:author], url: params[:url], date: params[:date]})
    redirect_to("/pictures")
  end

  def show
    @picture = Picture.find(params[:id])
    render(:show)
  end

end