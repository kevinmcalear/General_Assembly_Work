class TasksController < ApplicationController

  def index

  end

  def list
    render json: Task.all.order(:id)
  end

  def create
    @task = Task.create(name: params[:name], check: false)
    render json: @task
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.update(check: params[:check])
    render json: @task 
  end

  def destroy
    @task = Task.find(params[:id].to_i)
    @task.destroy
    render json: @task 
  end

end