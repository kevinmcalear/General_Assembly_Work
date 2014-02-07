require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/clown'

# Clown.create({
    # :name => "Dozo",
    # :happiness_level => 100,
    # :creepiness_level => 0,
    # :talent => "Bringing joy to children.",
    # :is_singer => true
  # })

# Clown.create({
#     :name => "Schmozo",
#     :happiness_level => 100,
#     :creepiness_level => 0,
#     :talent => "Bringing joy to children.",
#     :is_singer => true
#   })



get("/") do
  erb(:index)
end

get ("/clowns") do
  @clowns = Clown.all
  erb(:'clowns/index')
end

get ("/clowns/new") do
  erb(:'clowns/new')
end

post ("/clowns") do
  @clown = Clown.create(
    :name => params[:name],
    :talent => params[:talent],
    :is_singer => params[:is_singer])
  erb(:'clowns/show')
end

get ("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  erb(:'clowns/show')
end


get ("/clowns/:id/edit") do
  @clown = Clown.find(params[:id])
  erb(:'clowns/edit')
end


put ("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  @clown.update(
    :name => params[:name],
    :talent => params[:talent],
    :is_singer => params[:is_singer])
  erb(:'clowns/show')
end


delete ("/clowns/:id") do
  @clown = Clown.find_by(id: params[:id])
  @clown.destroy
  redirect to("/clowns")
end


delete ("/clowns") do
  redirect to("http://clowns.com")
end