require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/'){ 
  if params[:name].nil?
    @name = "World"
  else
    @name = params[:name]
  end

  erb(:profile)}

get('/name'){ erb(:name)}
