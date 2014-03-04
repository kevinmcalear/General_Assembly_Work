require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/banana' do
  'Dolphin' * 10
end

get '/greet/:name' do
  "Hello #{params[:name]}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey you like bananas"
  else
    "Hey, #{params[:name]}. Let's play #{params[:sport]}."
  end
end