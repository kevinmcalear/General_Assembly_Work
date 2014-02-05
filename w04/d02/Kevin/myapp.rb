require 'sinatra'
require 'sinatra/reloader'
get '/'  do
  '<h1 style="background: pink;">Hello World!</h1>
  <a style="background: pink;" href="http://localhost:4567/banana"> Sup</a>'
end

get '/banana'  do
  name = "Julia"
  sport = "ultimate"
  "#{name} likes playing #{sport}"
end

get '/greet/:name'  do
  "<h1>Hello #{params[:name]}</h1>"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else 
    "Hey #{params[:name]}, let's play some #{params[:sport]}"
  end
end