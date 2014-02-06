require 'sinatra'
require 'sinatra/reloader'

get('/') do 
  erb(:profile)
end

get('/name') do
  erb(:name)
end
