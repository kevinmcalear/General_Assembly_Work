class GamesController < ApplicationController
	def index
		render(:index)
	end

	def create
		@game = Game.create(winner: params[:winner])
		render json: @game
	end

end