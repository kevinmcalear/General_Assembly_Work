class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @entry=Entry.create(
      :author => params[:author],
      :photo_url => params[:photo_url],
      :caption => params[:caption],
      :date_taken => params[:date_taken])
      # redirect_to("/entries")
    redirect_to("/entries/#{@entry.id}")
  end

  def show
    @entry = Entry.find(params[:id])
    render(:show)
  end
end