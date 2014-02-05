require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = { -2 => "4", -1 => "10", 0 => "100"}

get "/" do
  "WELCOME TO CALCULATOR"
end

get "/calculator" do 
  calculations.values.join(", ")
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculations[id]
  if entry
    entry
  else
    "NONE FOUND YOU DINGUS!!!"
  end 
end
