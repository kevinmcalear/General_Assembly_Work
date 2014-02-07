#since this is named DogsController – it expects
#there to be a folder in your views called dogs
class DogsController < ApplicationController
  def index
    #how can we get all our dogs from the database
    #it needs to be an instance variable so that
    #we can access it in our view
    @dogs = Dog.all
    #this is going to live in views
    #returns the string from the index view
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @dogs = Dog.create({name: params[:name], breed: params[:breed], age: params[:age].to_i})
    redirect_to("/dogs")
  end

  def show
    @dog = Dog.find_by_id(params[:id])
    render(:show)
  end

end