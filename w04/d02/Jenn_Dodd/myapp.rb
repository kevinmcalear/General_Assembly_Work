require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get'/banana' do
  'Hello Jenn!'
end

get '/greet/:name' do
  "Hello #{params[:name]}!"
end

get'/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else
    "Hey #{params[:name]}, let's play some #{params[:sport]}"
  end
end