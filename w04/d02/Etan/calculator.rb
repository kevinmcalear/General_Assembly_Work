require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = { 1 => "4", 2 => "10", 3=> "100"}

get "/" do
  "WELCOME TO CALCULATOR"
end

get "/calculator" do 
  calculations.values.join(", ")
end