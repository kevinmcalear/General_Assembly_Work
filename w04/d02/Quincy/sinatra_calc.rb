require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = { 1 => "5 = 2+ 3" }

get "/sinatra_calc" do
  "Welcome to your Sinatra Calculator!!"
end

get "/sinatra_calc/calculator" do
  calculations.values.join(", ")
end

get "/sinatra_calc/calculator/:num" do
  if calculations[:num] == nil
    "Sorry, you haven't done this many calculations!!"
  else
    calculations[:num].to_i
  end
end

post "/sinatra_calc/calculator/add" do
  sum = params[:num_1].to_i + params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{sum} = #{params[:num_1]} + #{params[:num_2]}"
end

post "/sinatra_calc/calculator/subtract" do
  differnce = params[:num_1].to_i - params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{diffence} = #{params[:num_1]} - #{params[:num_2]}"
end

post "/sinatra_calc/calculator/multiply" do
  product = params[:num_1].to_i * params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{product} = #{params[:num_1]} x #{params[:num_2]}"
end

post "/sinatra_calc/calculator/divide" do
  quotient = params[:num_1].to_i / params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{quotient} = #{params[:num_1]} + #{params[:num_2]}"
end

