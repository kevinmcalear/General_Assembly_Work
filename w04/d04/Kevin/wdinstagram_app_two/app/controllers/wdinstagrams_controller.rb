class WdinstagramsController < ApplicationController
  def index
    @pics = Wdinstagram.all
    render(:index)
  end 

  def new
    @pics = Wdinstagram.all
    render(:new)
  end 

  def create
    
    Wdinstagram.create(
      author: params[:author], 
      photo_url: params[:photo_url],
      date_taken: params[:date_taken]
      )
    render(:new)
  end 

  def show
    @pic = Wdinstagram.find(params[:id])
    render(:show)
  end 
end