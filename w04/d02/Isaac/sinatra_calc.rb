require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = { 0 => 0 }

get '/' do 
  "WECOME TO THE CALCULATOR"
end

get '/calculator' do 
  "#{calculations}"
end

get '/calculator/:choice' do 
  num = params[:choice].to_i
  if calculations.keys.include?(num)
    "#{calculations[num]}"
  else
    "YOU ARE CONFUSED"
  end
end

post '/calculator/add' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end

post '/calculator/subtract' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i - num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end

post '/calculator/multiply' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i * num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end

post '/calculator/divide' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_f / num2.to_f
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end





















