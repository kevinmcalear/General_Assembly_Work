class GamesController < ApplicationController
  # responds_to :json
  def new
  end

  def create
    # binding.pry
    @game = Game.create(winner: game_params)
    render json: @game
  end

  private
  def game_params
    params[:checkWinner]
  end 
end