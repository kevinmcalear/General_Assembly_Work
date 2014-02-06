require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
#   name: "Dozo", 
#   happiness_level: 100,
#   creepiness_level: 0,
#   talent: "Bringing joy to children.",
#   is_singer: true
#   })

get("/") do
  erb(:index)
end

# Read all the clowns
# Index Action
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
# Show Action
get("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end

# Update a particular clown
# Update Action
put("/clowns/:id") do
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