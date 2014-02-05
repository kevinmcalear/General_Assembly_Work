require 'sinatra'
require 'sinatra/reloader'

calculations = ["first","second","third"]

get "/" do
  "Welcome to the Calculator"
end

get "/calculator" do
  calculations
  # calculations.each do |calc|
  #  s = calc + ", "
  #  end
end

get "/calculator/:id" do
  id = params[:id].to_i - 1
  calculations[id]
end