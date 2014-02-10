class SpaceshipsController < ApplicationController
	#this method takes an argument that's an instance method as a symbol
	#it also takes options – it basically says 
	#self.before_action(:load_spaceship, only: [:show, :edit, :update, :destroy])

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
