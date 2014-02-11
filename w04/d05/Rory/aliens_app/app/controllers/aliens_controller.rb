class AliensController < ApplicationController
  def index
    @aliens = Alien.where(spaceship_id: params[:spaceship_id])
   #  @aliens= Array.new do
   #    Alien.all.select do |alien|
   #      if alien.spaceship_id == params[:id]
   #        @aliens << alien
   #     end
   #   end
   # end
   render(:index)
 end
 def show
  @alien = Alien.find(params[:id])
  render(:show)
end
def new
  render(:new)
end
def create
  Alien.create({
    name: params[:name],
    appendages: params[:appendages],
    origin: params[:origin],
    stuff: params[:stuff],
    weakness: params[:weakness],
    strength: params[:strength],
    spaceship_id: params[:spaceship_id],
    })
  redirect_to("/spaceships/#{params[:spaceship_id]}")
end
end