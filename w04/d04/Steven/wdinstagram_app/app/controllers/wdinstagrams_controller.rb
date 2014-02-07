class WdinstagramsController < ApplicationController
  def index
    @wdinstagrams = Wdinstagram.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    Wdinstagram.create({
      name: params[:name],
      img_address: params[:img_address]
      })
    redirect_to("/wdinstagrams")
  end

  def show
    @wdinstagram = Wdinstagram.find(params[:id])
    render(:show)
  end

end