class SpaceshipsController < ApplicationController

	def index
		@spaceships = Spaceship.all
		render(:index)
	end

	def new
		render(:new)
	end

	def create
		@spaceships = Spaceship.create({name: params[:name], capacity: params[:capacity], origin: params[:orign], photo_url: params[:photo_url], purpose: params[:purpose]})
		redirect_to("/spaceships")
	end

	def show
		@spaceships = Spaceship.find_by_id(params[:id])
		render(:show)
	end

end
