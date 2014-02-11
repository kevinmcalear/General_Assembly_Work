class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render(:index) #coming from routes.rb and returning stuff from
    #index.html.erb
  end

  def new
    render(:new)
  end

  def create
    @dogs = Dog.create({
      name: params[:name],
      breed: params[:breed],
      age: params[:age].to_i
      })
    redirect_to("/dogs")
  end

  def show
    @dogs = Dog.find(params[:id])
    render(:show)
  end
end

# post("/clowns") do
#   @clown = Clown.create({
#     name: params[:name], 
#     talent: params[:talent], 
#     is_singer: params[:is_singer]
#   })

#   erb(:'clowns/show')
# end