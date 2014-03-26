class GamesController < ApplicationController

  def create
    @game = Game.create(game_result: params[:game_result])
    render json: @game
  end

end
