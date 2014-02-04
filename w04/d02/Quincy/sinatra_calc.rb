require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = { 1 => ""}

get "/sinatra_calc" do
  "Welcome to your Sinatra Calculator!!"
end

get "/sinatra_calc/calculator" do
  calculations.values.join(", ")
end

get "/sinatra_calc/calculator/:num" do
  if calculations[:num] == nil
    puts "Sorry, you haven't done this many calculations!!"
  else
    puts calculations[:num]
end

post "/sinatra_calc/calculator/:oprtn/:num_1/:num_2"
if :oprtn == "add"

elsif :oprtn == "subtract"

elsif :oprtn == "multiply"

elsif :oprtn == "divide"

end
