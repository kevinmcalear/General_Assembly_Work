require 'sinatra'
require 'sinatra/reloader'

calculations = { 1 => "1 + 1 = 2", 2 => "2 * 3 = 6"}

get '/' do 
  "Welcome to ∞Calculate∞"
end

get '/calculator' do 
  # a list of all calculations
  all_calculations = calculations.values.join(", ")
end
