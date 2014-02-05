# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/banana' do
  'bananard'
end

get '/greet/:name/:sport' do
  name = params[:name]

  if name == "PJ"
    "Hey! you must enjoy bananas"
  else
    "Hey #{name}, let's play some #{params[:sport]}"
  end
  
end