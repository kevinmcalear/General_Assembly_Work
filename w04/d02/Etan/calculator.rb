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

# curl -d "number1=400&number2=150" http://localhost:4567/calculate/subtract

post "/calculate/add" do

  last_id = calculations.keys.max
  equals = params[:number1].to_f + params[:number2].to_f
  calculations[last_id + 1] = equals
end

post "/calculate/subtract" do
  last_id = calculations.keys.max
  equals = params[:number1].to_f - params[:number2].to_f
  calculations[last_id + 1] = equals
end

post "/calculate/multiply" do
  last_id = calculations.keys.max
  equals = params[:number1].to_f * params[:number2].to_f
  calculations[last_id + 1] = equals
end

post "/calculate/divide" do
  last_id = calculations.keys.max
  equals = params[:number1].to_f / params[:number2].to_f
  calculations[last_id + 1] = equals
end