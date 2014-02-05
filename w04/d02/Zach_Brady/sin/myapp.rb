require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello World!'
end

get '/banana' do
  name = "Brach"
  game = "Go"
  "#{name} likes #{game}."
end

get '/greet/:name' do
  "Hello #{params[:name]}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else
    "Hey #{params[:name]}, let's play some #{params[:sport]}." 
  end
end