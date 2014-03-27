class GamesController < ApplicationController
  def new
  end

  def create
    @game = Game.create(winner: params[:winner])
    render json: @game
  end

  def history
    @results = {x: Game.where(winner: "x").length, o: Game.where(winner: "o").length, tie: Game.where(winner: "tie").length}
    render json: @results
  end
end