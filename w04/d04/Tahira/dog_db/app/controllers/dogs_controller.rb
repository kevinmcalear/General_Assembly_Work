class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render(:index)
  end

  def new 
    render(:new)
  end

  def create
    Dog.create({name: params[:name], breed: params[:breed], age: params[:age].to_i})
    redirect_to("/dogs")
  end

  def show
    @dog = Dog.find(params[:id])
    render(:show)
  end
end