require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/') do
  #@name = ""

  if params[:name].nil?
    @name = "world"
  else
    @name = params[:name]
  end

  erb(:profile)
end

get("/name") do
  erb(:name)
end
