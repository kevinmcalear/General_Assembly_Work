#myapp.rb
#this is just ruby

require 'sinatra'
require 'sinatra/reloader'

get '/' do
  #when there's a get request
  #send this back
  'Hello World!'
  
end

get '/banana' do
  name = "julia"
  sport = "ultimate"
  "#{name} likes playing #{sport}"
end
# then do http://localhost:4567/banana

get '/greet/:name' do
  "Hello #{params[:name]}"
  #params is a hash that is built in that you have access to.
  #it's always called params
  #http://localhost:4567/greet/Rory
  #would say Hello Rory
end

get '/greet/:name/:sport' do
  if params[:name]=="PJ"
    "Hey! You must enjoy bananas!"
  else
    "Hey #{params[:name]}, let's play some #{params[:sport]}"
  end
end