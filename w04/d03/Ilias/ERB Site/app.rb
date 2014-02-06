require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/') do
  if params[:name].nil?
    @name = "You!"
  else
    @name = params[:name].capitalize
  end
  erb(:profile)
end

get('/name') do
  erb(:name)
end
