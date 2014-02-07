class GramsController < ApplicationController
  def index
    @grams = Gram.all
    render(:index)
  end

  def show
    @gram = Gram.find(params[:id])
    render(:show)
  end

  def new
    render(:new)
  end

  def create
    Gram.create({name: params[:name], image_address: params[:image_address]})
    redirect_to('/grams')
  end

  def list
    @grams = Gram.all
    render(:list)
  end

end
