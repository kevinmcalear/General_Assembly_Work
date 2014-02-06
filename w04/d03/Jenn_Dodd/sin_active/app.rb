#This is the controller!

require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

#Clown maker, fishes!
  Clown.create({
  name: "Zipper",
  happiness_level: 50,
  creepiness_level: 33,
  talent: "Bringing joy to children.",
  is_singer: true
  })

get("/") do
  erb(:index)
end

#read all the clowns
#index action
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#add a clown
#create action
post("/clowns") do
  erb(:"clowns/show")
end

#read a particular clown
#show
get("/clowns/:id") do
    @clown = Clown.find_by_id(params[:id])
  erb(:'clowns/show')
end

#update a particular clown
#update action
put("/clowns/:id") do
  erb(:"clowns/show")
end

#kill a particular clown
#destroy action
delete("/clowns/:id") do
  redirect to("/clowns")
end

#kill all the clowns
#destroy action
delete("/clowns") do
  redirect to("/")
end




