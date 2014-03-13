class GamesController < ApplicationController
  def new
    render :new
  end

  def create
    @game = Game.create(won: params[:won])
    #don't actually need @, just using for convention
    render json: @game
    #it's customary to respond with the newly created object
    #a json representation of the game is rendering
  end

end