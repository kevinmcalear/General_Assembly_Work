class GamesController < ApplicationController
  def new
    render :new
  end

  def create
    @game = Game.create(winner: params[:winner])
    render json: @game
  end

end