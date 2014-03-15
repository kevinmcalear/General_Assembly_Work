class ListsController <ApplicationController

  def index
    
  end

  def new
  end

  def create
    @task = List.create(task: params[:task])
    render json: @task
  end

  def search
    @task = List.all
    render json: @task
  end

end