class GamesController < ApplicationController

  def new
    @games = Game.all
  end

  def create
    @game = Game.create(won: params[:won])
    render json: @game
  end

  def all
    render json: {
      x: Game.where(won: "x").count,
      o: Game.where(won: "o").count,
      t: Game.where(won: "t").count
    }
  end

end