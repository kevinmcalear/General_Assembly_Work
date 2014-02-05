require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = { -2 => "4", -1 => "10", 0 => "100"}

get "/" do
  "WELCOME TO CALCULATOR"
end

get "/calculator" do 
  calculations.values.join(", ")
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculations[id]
  if entry
    entry
  else
    "NONE FOUND YOU DINGUS!!!"
  end 
end

    


get "/calculate/add/:number1/:number2" do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i

  "#{number1 + number2}"
end

get "/calculate/subtract/:number1/:number2" do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i

  "#{number1 - number2}"
end

get "/calculate/multiply/:number1/:number2" do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i

  "#{number1 * number2}"
end

get "/calculate/divide/:number1/:number2" do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i

  "#{number1 / number2}"
end