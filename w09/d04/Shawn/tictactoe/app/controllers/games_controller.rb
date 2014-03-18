# games_controller.rb
class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def new
  end

  def create
    @game = Game.create(won: params[:won])
    render json: @game
  end

end