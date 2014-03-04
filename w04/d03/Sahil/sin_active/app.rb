require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
#   name: "Shmozo",
#   happiness_level: 100,
#   creepiness_level: 0,
#   talent: "Bringing joy to children.",
#   is_singer: true
# })

get("/") do
  erb(:index)
end

# Read all the clowns
# Index Action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

# New Action
get("/clowns/new") do
  erb(:'clowns/new')
end

# Create a clown
# Create Action
post("/clowns") do
  @clown = Clown.create({
    name: params[:name], 
    talent: params[:talent], 
    is_singer: params[:is_singer]
  })

  erb(:'clowns/show')
end

# Read a particular clown
# Show Action
get("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end

get("/clowns/:id/edit") do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/edit')
end

# Update a particular clown
# Update Action
put("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  @clown.update({
    name: params[:name], 
    talent: params[:talent], 
    is_singer: params[:is_singer]
  })
  erb(:'clowns/show')
end

# Delete that clown
# Destroy Action
delete("/clowns/:id") do
  redirect to("/clowns")
end

# Delete ALL clowns
# Destroy Action
delete("/clowns") do
  redirect to("http://clowns.com")
end