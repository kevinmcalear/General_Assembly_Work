require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello World!'
end

get '/banana' do
  'banana'
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else
  "Hey #{params[:name]}, let's play some #{params[:sport]}!"
  end
end

get '/img' do
  <h1> test </h1>
end
