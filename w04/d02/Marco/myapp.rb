require 'sinatra'
require 'sinatra/reloader'

get '/' do
    'Hello World!'
end

get '/banana' do
  name = 'kevin'
  sport = 'ultimate'

  "#{name} likes playing #{sport}"
  # 'banana' * 10
end

get '/greet/:name' do
  "Hello #{params[:name].capitalize}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey! You must enjoy bananas!"
  else 
    "Hey! #{params[:name].capitalize}, let's play some #{params[:sport]}!"
  end
end