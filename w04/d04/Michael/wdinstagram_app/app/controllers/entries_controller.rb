
class EntriesController < ApplicationController
  def index
    @entries = Entries.all
    render(:index)
  end

  def show
    @entry = Entries.find_by(id: params[:id])
    render(:show)
  end 

  def post
    render(:post)
  end 

  def create
    Entries.create({author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken]})
    redirect_to("/entries")
  end 

  def delete
    @entry = Entries.find_by(id: params[:id])
    @entry.destroy
    redirect_to("/entries")
  end 


end 

