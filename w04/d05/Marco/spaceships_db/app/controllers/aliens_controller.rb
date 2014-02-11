class AliensController < ApplicationController

  def index
    @aliens = Alien.all
    render(:index)
  end

  def show
    @alien = Alien.find(params[:id])
    render(:show)
  end

end