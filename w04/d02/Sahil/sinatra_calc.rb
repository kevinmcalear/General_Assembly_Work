require 'sinatra'
require 'sinatra/reloader'

calculations = ["first"]

get "/" do
  "Welcome to the Calculator"
end

get "/calculator" do
  calculations.to_s
end

get "/calculator/:id" do
  id = params[:id].to_i - 1
  calculations[id]
end

post "/calculator/add/:first/:second" do
  a = params[:first].to_f
  b = params[:second].to_f
  calculations << " #{a} + #{b} = #{a+b} "
end

post "/calculator/subtract/:first/:second" do
  a = params[:first].to_f
  b = params[:second].to_f
  calculations << " #{a} - #{b} = #{a-b} "
end

post "/calculator/multiply/:first/:second" do
  a = params[:first].to_f
  b = params[:second].to_f
  calculations << " #{a} * #{b} = #{a*b} "
end

post "/calculator/divide/:first/:second" do
  a = params[:first].to_f
  b = params[:second].to_f
  calculations << " #{a} * #{b} = #{a*b} "
end