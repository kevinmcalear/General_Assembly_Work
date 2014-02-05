require 'sinatra'
require 'sinatra/reloader'

get '/' do
'Hello world! How are you?'
end

# get '/greet/:name' do
#   "Hello #{params[:name]}"
# end

get '/greet/:name/:sport' do 
  if params[:name] == "PJ"
    "Hey you must enjoy banaas!"
  else
    "Hey #{params[:name]} you must enjoy #{params[:sport]}"
  end
end