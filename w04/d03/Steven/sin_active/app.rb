require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
#   name: "Schmozo",
#   happiness_level: 100,
#   creepiness_level: 0,
#   talent: "Bringing Joy To Children",
#   is_singer: true

#   })

get("/") do
  erb(:index)
end

#read all the clowns
#index action
get ("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#create a clown
#Create Action
post ("/clowns") do
  erb(:'clowns/show')
end

#read a particular clown
#show action
get ("/clowns/:id") do
  @clown = Clown.find_by(:id => params[:id])
  erb(:'clowns/show')
end

#update a clown
put ("/clowns/:id") do
  erb(:'clowns/show')
end

#delete one clown
#destroy action
delete ("/clowns/:id") do
  redirect to("/clowns")
end

#delete all clowns
delete ("/clowns") do
  redirect to("http://clowns.com")
end

