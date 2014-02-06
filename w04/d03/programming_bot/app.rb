require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

Clown.create({
    name: "Shmozo",
    happiness_level: 100,
    creepiness_level: 0,
    talent: "Bringing joy to children",
    is_singer: true
  })

get("/") do
  erb(:index)
end

#Read all clowns
#Create action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#Read a particular clown
#Show action
get("/clowns/:id") do
  @clown = Clown.find_by(:id =>params[:id])
  erb(:'clowns/show')
end

#Create a clown
post ("/clowns") do
  erb(:'clowns/show')
end

#Update a particular clown
#Update action
put ("/clowns/:id") do
  erb(:'clowns/show')
end

#Delete a particular clown
delete ("/clowns/:id") do
  redirect to("/clowns")
end

#Delete all clowns
delete ("/clowns") do 
  redirect to("http://clowns.com")
end