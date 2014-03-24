class GamesController < ApplicationController

  def new
    render :new
  end

  def create
    @game = Game.create(won: params[:won])
    render json: @game
  end

  def stats
    render json: Game.group(:won).count
  end

end
