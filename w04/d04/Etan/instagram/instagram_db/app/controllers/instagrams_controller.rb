class InstagramsController < ApplicationController
  def index
    @instagrams = Instagram.all
    render(:index)
  end

  def new
    render(:new)
  end  

  def create
    Instagram.create({photographer: params[:photographer], url: params[:url], date_taken: Time.now})
    redirect_to("/instagrams")
  end

  def show
    @instagram = Instagram.find(params[:id])
    render(:show)
  end
end
