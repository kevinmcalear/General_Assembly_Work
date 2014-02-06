require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

Clown.create({
  name: "Dozo",
  happiness_level: 100,
  creepiness_level: 0,
  talent: "Bringing joy to children",
  is_singer: true
  })

get("/") do
  @clowns = Clown.all
  erb(:index)
end

get("/clowns") do 
  erb(:'clowns/index')
end

#create a clown
#create action 
post("clowns") do 
  erb(:'clowns/show')
end

#read a particular clown
get("/clowns/:id") do 
  @clown = Clown.fnd_by(id: params[:id])
  erb(:'clowns/show')
end

put("/clowns/:id") do 
  erb(:'clowns/show')
end

#delete that clown
delete("/clowns/:id") do 
  redirect to ("/clowns")
end

#delete all clowns
delete("/clowns") do 
  redirect to("http://www.clowns.com")
end

