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