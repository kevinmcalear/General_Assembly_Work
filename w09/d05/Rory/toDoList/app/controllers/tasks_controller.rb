class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.create(name: params[:name], check: params[:boolean])
    render json: @task
  end
end