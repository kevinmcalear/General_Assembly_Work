require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'


get("/") do
  erb(:index)
end

#see clowns
get("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

#create a clown
post("/clowns") do
  erb(:'clowns/show')
end

#see a specific clown
get("/clowns/:id") do
  @selected_clown = Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end

#update a clown
put("/clowns/:id") do
  erb(:'clowns/show')
end

#KILL CLOWNS
delete("/clowns/:id ") do
  redirect to("http://clowns.com")
end
