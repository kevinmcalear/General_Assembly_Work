require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require_relative './models/config'
require_relative './models/clown'

# Clown.create(
#   name: "Dozo",
#   happiness_level: 100,
#   creepiness_level: 0,
#   talent: "Bringing joy to children.",
#   is_singer: true
# )

# Clown.create(
#   name: "Krusty",
#   happiness_level: 10,
#   creepiness_level: 50,
#   talent: "Smoking",
#   is_singer: true
# )


get("/") do
  erb(:index)
end

#read all clowns
#index action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#create a clown
#create action
post('/clowns') do
  erb(:'clowns/show')
end

#read a particular clown
#show action
get('/clowns/:id') do
  @clown = Clown.find_by(id: params[:id])
  @name = @clown.name
  @happiness_level = @clown.happiness_level
  @creepiness_level = @clown.creepiness_level
  @talent = @clown.talent
  erb(:'clowns/show')
end

#update a particular clown
#update action
put('/clowns/:id') do
  erb(:'clowns/show')
end

#delete a particular clown
delete(:'/clowns/:id') do
  redirect to("/clowns")
end

#delete all clowns
delete('/clowns') do
  redirect to("/")
end
