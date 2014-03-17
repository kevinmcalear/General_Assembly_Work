class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.create(todo: params[:task])
    @task.update(crossed_out: false)
    render json: @task
  end

  def new
    @tasks = Task.all
    render json: @tasks
  end

  def cross_out
    @task = Task.find(params[:id])
    @task.update(crossed_out: !@task.crossed_out)
    render json: @task
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render json: Task.all
  end

end



# class TasksController < ApplicationController
#   def index
#     @tasks = Task.all
#   end

#   def create

#     @task = Task.create(todo: params[:task])
#   end

#   def get_tasks
#     @tasks = Task.all
#     render json: @tasks
#   end
# end
