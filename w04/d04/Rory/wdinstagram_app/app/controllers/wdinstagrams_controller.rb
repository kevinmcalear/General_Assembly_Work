class WdinstagramsController < ApplicationController
  def index
    @wdinstagrams = Wdinstagram.all
    render(:index)
  end
  def new
    render(:new)
  end
end