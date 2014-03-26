class GamesController < ApplicationController
  def index
  end
  
  def new
    @x_winner = Game.where(winner: "x").length
    @o_winner = Game.where(winner: "o").length
    @tie_winner = Game.where(winner: nil).length
    render :new
  end

  def create
    @game = Game.create(winner: params[:winner])
    render :new
  end

  def destroy
    Game.destroy_all
  end

end
