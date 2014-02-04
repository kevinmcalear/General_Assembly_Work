require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = {1 => "1 + 2 = 3", 2 => "4 * 5 = 20"}

get '/' do
  "Welcome to a Calculator on the Internet!"
end

get '/calculator' do
  calculations.values.join(", ")
end

get '/calculator/:id' do
  calc = calculations[params[:id].to_i]
  if calc
    calc
  else
    "Entry not found!"
  end
end

