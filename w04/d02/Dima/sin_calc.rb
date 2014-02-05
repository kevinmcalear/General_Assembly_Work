require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = {1 => "6"}

get '/' do
 "Welcome to calculator" 
end

get '/calculator' do
 calculations.values.join(", ")
end

get "/calculator/:id" do
  id = params[:id].to_i
  calc = calculations[id]
  if calc
    calc
  else
    "Doesn't exist"
  end
end




post "/calculator/add" do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:a].to_i + params[:b].to_i).to_s
end

post "/calculator/subtract" do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:a].to_i - params[:b].to_i).to_s
end

post "/calculator/divide" do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:a].to_i / params[:b].to_i).to_s
end

post "/calculator/multiply" do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:a].to_i * params[:b].to_i).to_s
end