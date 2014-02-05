require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
#     name: "Shmozo",
#     happiness_level: 100,
#     creepiness_level: 0,
#     talent: "Brining joy to children",
#     is_singer: true
#   })



get("/") do
  erb(:index)
end
# read all the clowns
# index action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

# create a clown
# create action
post("/clowns") do
  erb(:'clowns/show')
end

# read a particular clown
# show action
get("/clowns/:id") do
  @clown=Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end

# update a clown
# update action
put("/clowns/:id") do
  erb(:'clowns/show')
end

# delete a clown
# destroy action
delete("/clowns/:id") do
  redirect to("/clowns")
end

# delete all clowns
# destroy action
delete("/clowns") do
  redirect to("http://clowns.com")
end

