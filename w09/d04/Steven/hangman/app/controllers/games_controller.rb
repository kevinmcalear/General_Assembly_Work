class GamesController < ApplicationController

  def index
    render :new
  end

  def create
    @game = Game.create(won: params[:won])
    render json: @game
  end
end

