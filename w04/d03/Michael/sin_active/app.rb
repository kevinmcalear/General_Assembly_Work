require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
#   name: "Dozo",
#   happiness_level: 100, 
#   creepiness_level: 0,
#   talent: "Bringing joy to children",
#   is_singer: true
#   })

get("/") do
  erb(:index)
end

  # Read all the clowns
get ("/clowns") do
  # What are we returning? 
  @clowns = Clown.all
  erb(:'clowns/index')
end 

#New Action
get("/clowns/new") do
  erb(:'clowns/new')
end 

##Create a Clown
##Create Action
post ("/clowns") do 
  @clown = Clown.create({
    name: params[:name], 
    talent: params[:talent], 
    is_singer: params[:is_singer]
    })
  
  erb(:'clowns/show')

end 

##Read a particular clown
##Show action
get ("/clowns/:id") do 
  @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/show')
end 


get ("/clowns/:id/edit" ) do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/edit')
end 

## Update a particular clown. 
## Update Action. 
post ("/clowns/:id") do 
  @clown = Clown.find_by(id: params[:id])
  @clown.update({
    name: params[:name], 
    talent: params[:talent], 
    is_singer: params[:is_singer]
    })
  
  erb(:'clowns/show')
end 

## Delete a particular clown
delete ("/clowns/:id") do 
  @clown = Clown.find_by(id: params[:id])
  @clown.destroy
  redirect to("/clowns")
end 

## Delete ALL clowns
delete ("/clowns" ) do
  redirect to("http://clowns.com") 
end