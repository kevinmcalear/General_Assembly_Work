class EntriesController < ApplicationController

  def index
    @entry = Entry.all
    render(:index)
  end

end