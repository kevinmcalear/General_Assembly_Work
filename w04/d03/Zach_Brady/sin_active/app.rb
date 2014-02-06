require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clowns'

Clown.create( {
  name: "John Wayne Gacy", 
  happiness_level: 0,
  creepiness_level: 100,
  talent: "Bringing joy to children with a tourniquet",
  is_singer: false
  } )

get("/") do
  erb(:index)
end

# Read all the clowns
# Index action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

# Create a clown
# Create Action
post("/clowns") do
  erb(:'clowns/show')
end

# Read a particular clown
# Show action
get("/clowns/:id") do
  @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/show')
end

# Update a particular clown
# Update Action
put("/clowns/:id") do
  erb("/clowns/show")
end

# Delete that clown
# Destroy action
delete("/clowns/:id") do
  redirect to("/clowns")
end

# Delete ALL the clowns
delete("/clowns") do
  redirect to("http://clowns.com")
end