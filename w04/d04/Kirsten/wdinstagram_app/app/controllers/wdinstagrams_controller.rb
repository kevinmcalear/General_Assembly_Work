class WdinstagramsController < ApplicationController
  def index
    @wdinstagrams = Wdinstagram.all
    render(:index)
  end

  def new
    render(:new)  
  end

  def create
    @wdinstagrams = Wdinstagram.create({author: params[:author],
      photo_url: params[:photo_url],
      date_taken: Date.parse(params[:date_taken])})
      redirect_to("/wdinstagram")
  end

  def show
    @wdinstagrams = Wdinstagram.find(params[:id])
    render (:show)
  end
end