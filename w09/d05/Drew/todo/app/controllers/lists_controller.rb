class ListsController <ApplicationController

  def index
    
  end

  def new
  end

  def create
    @task = List.create(task: params[:task])
    render json: @task
  end

  def update
    @task = List.find(params[:id])
    @task.update(completed: params[:completed])
    render json: @task

  end

  def search
    @task = List.all
    render json: @task
  end

  def destroy
    @task = List.find(params[:id])
    @task.destroy
    render json: @task
  end

end