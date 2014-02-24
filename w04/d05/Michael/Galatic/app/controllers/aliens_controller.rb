class AliensController < ApplicationController
  def show
    @alien = Alien.find_by(id: params[:id])
    render(:show)
  end 
  def create
    Alien.create({name: params[:name], origin: params[:origin], spaceships_id: params[:spaceships_id]})
    redirect_to("/spaceships")
  end 

end 