class WdinstagramsController < ApplicationController
  def index
    @wdinstagrams = Wdinstagram.all
    render(:index)
  end
  def new
    render(:new)
  end
   def create
    Wdinstagram.create({name: params[:name], url: params[:url], date: params[:date]})
    redirect_to("/wdinstagrams")
  end
  def show
    @wdinstagram = Wdinstagram.find(params[:id])
    render(:show)
  end
end