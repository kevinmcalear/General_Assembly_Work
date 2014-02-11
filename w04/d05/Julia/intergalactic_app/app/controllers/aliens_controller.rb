class AliensController < ApplicationController
	def index
		@aliens = Alien.where(spaceship_id: params[:spaceship_id])
		render(:index)
	end

	def new
		@spaceship = Spaceship.find(params[:spaceship_id])
		render(:new)
	end

	def create
		@aliens = Alien.create({appendages: params[:appendages], origin: params[:origin], name: params[:name], organic_substrate: params[:organic_substrate], weakness: params[:weakness], strength: params[:strength], spaceship_id: params[:spaceship_id]})
		redirect_to("/spaceships")
	end

	def show
		@aliens = Alien.find_by_id(params[:id])
		render(:show)
	end

	def all_aliens
		@aliens = Alien.all
		render(:all_aliens)
	end

end