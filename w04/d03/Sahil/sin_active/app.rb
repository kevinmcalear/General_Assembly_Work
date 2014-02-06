require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'
require 'pry'

get("/") do
  erb(:index)
end

get ("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end
post ("/clowns") do
  erb(:'clowns/show')
end
get ("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end
put ("/clowns/:id") do
  erb(:'clowns/show')
end
delete ("/clowns/:id") do
  redirect to("/clowns")
end
delete ("/clowns") do
  redirect to("http://clowns.com")
end
