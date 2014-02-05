require 'sinatra'
require 'sinatra/reloader'

calculations = { 1 => "2", 2 => "6", 3 => "2"}

get '/' do 
  "Welcome to ∞Calculate∞"
end

get '/calculator' do 
  # a list of all calculations
  all_calculations = calculations.values.join(", ")
end

get '/calculator/:id' do 
  id = params[:id].to_i
  calculation = calculations[id]
  if calculation
    calculation
  else
    "SAY WHAT?!?"
  end
end

post "/calculator/add" do
  # - A user can POST an Addition calculation to `/calculator/add` by providing 2 numbers as parameters.
  last_id = calculations.keys.max
  sum = params[:num1].to_f + params[:num2].to_f
  calculations[last_id+1] = sum
end

# - Same with `/calculator/subtract`, `/calculator/multiply`, and `/calculator/divide`

post "/calculator/subtract" do 
  last_id = calculations.keys.max
  difference = params[:num1].to_f - params[:num2].to_f
  calculations[last_id+1] = difference
end

post "/calculator/multiply" do 
  last_id = calculations.keys.max
  product = params[:num1].to_f * params[:num2].to_f
  calculations[last_id+1] = product
end

post "/calculator/divide" do 
  last_id = calculations.keys.max
  quotient = params[:num1].to_f / params[:num2].to_f
  calculations[last_id+1] = quotient
end
