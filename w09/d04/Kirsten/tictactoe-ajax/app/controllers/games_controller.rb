class GamesController < ApplicationController
  def index
    
  end

  def create
    @game = Game.create(winner: params[:winner])
    render json: @game
  end

  def results
    render json: { x: Game.where(winner: "x").count,
    o: Game.where(winner: "o").count,
    c: Game.where(winner: "c").count }
  end
  
end
