require 'sinatra'
require 'sinatra/reloader'


# when there's a GET request to '/', use the block
get '/' do
  'Hello World!'
end

get '/banana' do
  name = "kevin"
  sport = "ultimate"
  "#{name} likes playing #{sport}."
  # 'banana' * 10
end

get '/greet/:name' do
  "Hello #{params[:name]}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else
    "Hey! #{params[:name]}, let's play some #{params[:sport]}"
  end
end