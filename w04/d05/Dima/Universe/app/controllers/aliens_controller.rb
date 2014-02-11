class AliensController < ApplicationController
  def show
    @alien = Alien.find(params[:id])
    render(:show)
  end
end