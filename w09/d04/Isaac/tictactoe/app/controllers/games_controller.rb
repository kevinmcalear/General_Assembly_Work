class GamesController < ApplicationController
  def new
    @x_winner = Game.where(winner: "x").length
    @o_winner = Game.where(winner: "o").length
    @cats_game = Game.where(winner: "").length
  end
  def create
    @game = Game.create(winner: params[:winner])

  end
end