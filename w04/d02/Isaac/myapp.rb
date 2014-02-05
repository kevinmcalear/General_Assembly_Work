require 'sinatra'
require 'sinatra/reloader'

get '/' do 
 'Hello world!'
end

get '/banana' do 
  'banana' * 10
end

get '/greet/:name' do 
  "Hello #{params[:name]}"
end

get '/greet/:name/:sport' do 
  if params[:name] == "PJ"
    "hey! you must enjoy bananas"
  else
    "hey #{params[:name]} lets play some #{params:sport}"
  end
end