class GamesController < ApplicationController

  def new
    
  end

  def index
    @games = Game.all
  end

  def create
    @game = Game.create(winner: params[:winner])
    render json: @game
  end
end
