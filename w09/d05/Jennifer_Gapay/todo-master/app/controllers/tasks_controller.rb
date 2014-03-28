class TasksController < ApplicationController

	def index

	end

	def new
		render json: Task.all
	end


	def create
		@task = Task.create(todo: params[:todo], completed: false)
		render json: @task
	end

end