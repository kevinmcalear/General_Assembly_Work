class EntriesController < ApplicationController  
  def index
    @entries = Entry.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @entry= Entry.create({
      author: params[:author],
      photo_url: params[:photo_url],
      date: params[:date]
      })
    redirect_to("/entries")
  end

  def show 
    @entry = Entry.find(params[:id])
    render(:show)
  end
end