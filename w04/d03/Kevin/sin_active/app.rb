require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
  # name: "Shmozo",
  # happiness_level: 100,
  # creepiness_level: 0,
  # talent: "Bringing joy to children.",
  # is_singer: true
  # })

get("/") do
  erb(:index)
end

# Read all clowns
# This will be the Index Action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

# Create a clown
# This is a Create Action
post("/clowns") do
  erb(:'clowns/show')
end

# Read a particular clown
# This is a Show Action
get("/clowns/:id") do
  @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/show')
end

# Update a particular clown
# This is a Update Action
put("/clowns/:id") do
  erb(:'clowns/show')
end

# Destory a particular clown
# This is a Destroy Action
delete("/clowns/:id") do
  redirect to("/clowns")
end

# Destory all clowns
# This is a Destroy Action
delete("/clowns/") do
  redirect to("http://clowns.com")
end
