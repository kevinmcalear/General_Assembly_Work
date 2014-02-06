require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get ('/') do
  if params[:name].nil?
    @name = "world"
  else
    @name = params[:name]
  end
  erb(:profile)

end

get ("/name") do
  erb(:name)
  #looks in folder views- if there is a yield, there will be a re-route
end

get ("/normalize.css") do

end



# 'Hello #{params[:name].nil? ? 'world' : params[:name]}!'