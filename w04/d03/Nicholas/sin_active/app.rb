require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
#   name: "Beek",
#   happiness_level: 100,
#   creepiness_level: 0,
#   talent: "Bringing joy to children.",
#   is_singer: true
#   })


get("/") do
  erb(:index)
end

#Read all the clowns
get('/clowns') do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#Create a clowns
#Create action
post('/clowns') do
  erb(:'clowns/show')
end

#Read a particular clown
#Show action
get('/clowns/:id') do
  @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/show')
end

#Update a particular clown
put('/clowns/:id') do
  erb(:'clowns/show')
end

#Delete a particular clown
#Destroy action
delete('clowns/:id') do
  redirect to("/clowns")
end

#Delete all clowns
#Destroy action
delete('/clowns') do 
  redirect to('http://clowns.com')
end