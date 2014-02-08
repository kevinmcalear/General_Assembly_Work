class GramsController < ApplicationController
  def index
    @grams = Gram.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Gram.create( {author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken]})
    redirect_to("/grams")
  end

  def show
    @gram = Gram.find(params[:id])
    render(:show)
  end
end
