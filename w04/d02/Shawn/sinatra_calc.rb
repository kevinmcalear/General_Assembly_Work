require 'sinatra'
require 'sinatra/reloader'

calculations = { 1 => "1 + 1 = 2", 2 => "2 * 3 = 6", 3 => "6 / 3 = 2"}

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


