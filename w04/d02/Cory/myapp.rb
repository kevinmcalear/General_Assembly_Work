  require "sinatra"
  require "sinatra/reloader"

get '/' do
  "Hello World!!"
end

get '/banana' do
  name = "Dennis"
  sport = "Tennis"
  "#{name} like playing #{sport}"
end

get '/greet/:name' do
  "Hello #{params[:name]}"
end

get '/greet/:name/:sport' do
  if params[:name] == "PJ"
    "Hey, you enjoy bananas"
  else
    "Hey, #{params[:name]}, lets play some #{params[:sport]}"
  end
end