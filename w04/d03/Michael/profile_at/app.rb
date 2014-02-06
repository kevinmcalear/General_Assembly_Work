require 'sinatra'
require 'sinatra/reloader'
require 'pry'

##terniary operator
# get('/'){"Hello #{params[:name].nil? ? 'world' : params[:name]}"}

get('/') do 
  erb(:profile)
end 

get("/name") {" "}
