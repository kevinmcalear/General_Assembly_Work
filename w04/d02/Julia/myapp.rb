require 'sinatra'
require 'sinatra/reloader'

#when there's a get request to '/' do this
#send 'Hello World!' back
#block – the get is part of the domain specific language

get '/' do
  
  'Hello World!'
end

#we want it to return something else when we go to /banana
get '/banana' do 
  name = "julia"
  sport = "ultimate"
  "#{name} likes playing #{sport}"
end

#get pages dynamically, :name is a parameter
#there's a thing called the params hash
get '/greet/:name' do
  "hello #{params[:name]}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else
    "Hey #{params[:name]}, let's play some #{params[:sport]}"
  end
end

