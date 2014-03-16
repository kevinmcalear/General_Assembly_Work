class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.create(todo: params[:task], crossed_out: params[:crossed_out])
    render json: @task
  end

  def new
    @tasks = Task.all
    render json: @tasks
  end

  def update
    @task = Task.find(params[:id]).update(crossed_out: params[:crossed_out])
    render json: @task 
  end

  def destroy
    @task = Task.find(params[:id]).destroy
    render json: @task 
  end

end