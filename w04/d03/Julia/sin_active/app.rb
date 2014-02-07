require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

#Step One: 
#Write all the REST API
#just the methods + the path

#this is going to be an HTML API – typical web server

# Clown.create({
#   name: "Dozo",
#   happiness_level: 100,
#   creepiness_level: 1,
#   talent: "Bringing joy to children",
#   is_singer: true
#   })

# Clown.create({
#   name: "Duncan",
#   happiness_level: 100,
#   creepiness_level: 1,
#   talent: "Being silly!",
#   is_singer: true
#   })


get("/") do
  erb(:index)
end

#read all the clowns
get("/clowns") do 
  #What are we returning?
  @clown = Clown.all
  erb(:'clowns/index')
end


#New Action
get("/clowns/new") do
  erb(:'clowns/new')
end

#create a clown
#create action
post("/clowns") do
  @clown = Clown.create({
    name: params[:name], 
    talent: params[:talent], 
    is_singer: params[:is_singer]
  })
  erb(:'clowns/show')
end

get("/clowns/:id/edit") do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/edit')
end

#read a particular clown
#Show action – to read a particular resource
get("/clowns/:id") do
  @clown = Clown.find_by_id(params[:id]) 
  erb(:'clowns/show')
end

#update a particular clown
#UPDATE ACTION
put("/clowns/:id") do
  @clown = Clown.find_by_id(params[:id]) 
  @clown.update({
    name: params[:name], 
    talent: params[:talent], 
    is_singer: params[:is_singer]
    })
  erb(:'clowns/show')
end

#delete that clown
#DESTROY ACTION
delete("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  @clown.destroy
  redirect to("/clowns")
end

#delete all the clowns
delete("/clowns") do 
  redirect to("http://clowns.com")
end