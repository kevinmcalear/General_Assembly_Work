require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/') do 

  if params[:name].nil?
    @name="world"
  else
    @name=params[:name]
  end

  erb(:profile)
end

