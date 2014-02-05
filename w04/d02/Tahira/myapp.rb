require "sinatra"
require "sinatra/reloader"
get '/' do
  "Hello world!"
end

get '/banana' do
  name = "Tai"
  'apple '* 10
end

get '/greet/:name' do
  "Hello #{params[:name]}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey you must enjoy bananas"
  else
    "Hey #{params[:name]}, lets plays some #{params[:sport]}"
  end
end