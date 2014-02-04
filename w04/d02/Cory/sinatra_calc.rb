require "sinatra"
require "sinatra/reloader"
require "pry"

calculations = {1 => "5", 2 => "67", 3 => "1623"}

get '/' do
  "Welcome to the Calculator Web App"
end

get '/calculator' do
  calculations.values.join(", ")
end

get '/calculator/:id' do
  id = params[:id].to_i
  calc = calculations[id]
  if calc
    calc
  else
    "THERE ARE NO CALCULATIONS HERE!!!"
  end
end

post '/calculator/add' do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:value1].to_i + params[:value2].to_i).to_s
end

post '/calculator/subtract' do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:value1].to_i - params[:value2].to_i).to_s
end

post '/calculator/multiply' do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:value1].to_i * params[:value2].to_i).to_s
end

post '/calculator/divide' do
  last_id = calculations.keys.max
  calculations[last_id + 1] = (params[:value1].to_i / params[:value2].to_i).to_s
end





