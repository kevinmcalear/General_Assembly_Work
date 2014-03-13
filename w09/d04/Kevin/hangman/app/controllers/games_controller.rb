class GamesController < ApplicationController
  def index
  end

  def create
    @game = Game.create(won: params[:won])
    render json: @game
  end
end