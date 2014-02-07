class InstasController < ApplicationController

  def index
    @instas = Insta.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @instas = Insta.create({author: params[:author], date_taken: params[:date_taken], photo_url: params[:photo_url]})
    redirect_to("/instas")
  end

  def show
    @instas = Insta.find_by_id(params[:id])
    render(:show)
  end
  
end