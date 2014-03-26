class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.create(todo: params[:todo], is_complete: false)
    render json: @todo
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.is_complete = params[:is_complete]
    @todo.save
    render json: @todo
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render json: @todo
  end

  def id
    @todo = Todo.where(todo: params[:todo])
    render json: @todo
  end

end