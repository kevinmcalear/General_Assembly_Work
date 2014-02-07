#This is the controller!

require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'


get("/") do
  redirect to("/clowns")
end

#read all the clowns
#index action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#new action
get("/clowns/new") do
  erb(:'clowns/new')
end

#add a clown
#create action
post("/clowns") do
  @clown = Clown.create({
      name: params[:name], 
      talent: params[:talent], 
      is_singer: params[:is_singer] 
    })
  erb(:"clowns/show")
end

#read a particular clown
#show
get("/clowns/:id") do
    @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/show')
end

#update clown
#update 
get("/clowns/:id/edit") do
  @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/edit')
end

#update a particular clown
#update action
put("/clowns/:id") do
  @clown = Clown.find_by_id(params[:id]) 
  @clown.update({
      name: params[:name], 
      talent: params[:talent], 
      is_singer: params[:is_singer] 
    })
  erb(:"clowns/show")
end

#kill a particular clown
#destroy action
delete("/clowns/:id") do
  @clown = Clown.find_by_id(params[:id])
  @clown.destroy
  redirect to("/clowns")
end

#kill all the clowns
#destroy action
delete("/clowns") do
  redirect to("/")
end




