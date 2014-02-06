require 'sinatra'
require 'sinatra/reloader'
require 'pry'

#an if else statment – trinary operator
#if params name is nil then put world there else put params[:name]
#get('/') {"Hello #{params[:name].nil? ? 'world' : params[:name]}"}

get('/') do
  erb(:profile)
end

get("/name") do 
  erb(:name)
end

get("/normalize.css") do  

end