class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.create(name: params[:name], check: params[:boolean])
    render json: @task
  end

  def show
    render json: Task.all
  end

  def destroy
    @task.destroy
    redirect_to "/"
  end

private
  def load_task
    return @task = Task.find(params[:id])
  end
end

