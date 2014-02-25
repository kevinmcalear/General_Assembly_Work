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

#create new clown
get("/clowns/new") do
  erb(:'clowns/new')
end

#create a clown
#create action
post('/clowns') do
  @clowns = Clown.all
  @clown = Clown.create(
  name: params[:name],
  talent: params[:talent],
  is_singer: params[:is_singer],
  happiness_level: params[:happiness_level],
  creepiness_level: params[:creepiness_level]
  )
  @name = @clown.name
  @talent = @clown.talent
  erb(:'clowns/show')
end

#read a particular clown
#show action
get('/clowns/:id') do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end

get('/clowns/:id/edit') do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/edit')
end

#update a particular clown
#update action
put('/clowns/:id') do
  @clown = Clown.find_by(id: params[:id])
  @clown.update(
  name: params[:name],
  talent: params[:talent],
  is_singer: params[:is_singer]
  )
  erb(:'clowns/show')
end

#delete a particular clown
delete('/clowns/:id') do
  @clown = Clown.find_by(id: params[:id])
  @clown.destroy
  redirect to("/clowns")
end

#delete all clowns
delete('/clowns') do
  redirect to("/")
end
