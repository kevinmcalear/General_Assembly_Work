class GamesController < ApplicationController
  def index
  end

  def create
    @game = Game.create(winner: params[:winner])
    render json: @game
  end

  def xwinner
    @xWinner = Game.where(winner: "x").count
    render json: @xWinner
  end 

  def owinner
    @oWinner = Game.where(winner: "o").count
    render json: @oWinner
  end 

  def tie
    @tie = Game.where(winner: "tie").count
    render json: @tie
  end 


end