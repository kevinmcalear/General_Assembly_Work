require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculator_entry = { 1 => "Added 3 and 3", 2=> "Subtracted 5 and 2"}

get '/' do 
  "Welcome to the Calculator App!"
end

get '/calculator' do 
  calculator_entry.values.join(" , ")
end

get "/calculator/:id" do 
  id = params[:id].to_i 
  entry = calculator_entry[id]
  binding.pry
  if entry 
    entry 
  else
    "Invalid request!"
  end
end

post "/calculator/add" do 
  last_id = calculator_entry.keys.max 
  calculator_entry[last_id + 1] =  "You've added #{params[:num1]} and #{params[:num2]}"
end

post "/calculator/subtract" do 
  last_id = calculator_entry.keys.max 
  calculator_entry[last_id + 1] =  "You've subtracted #{params[:num2]} from #{params[:num1]}"
end

post "/calculator/multiply" do 
  last_id = calculator_entry.keys.max 
  calculator_entry[last_id + 1] =  "You've multiplied #{params[:num1]} from #{params[:num2]}"
end

post "/calculator/divide" do 
  last_id = calculator_entry.keys.max 
  calculator_entry[last_id + 1] =  "You've divided #{params[:num1]} by #{params[:num2]}"
end

###############################################
get '/calculator/add/:num1/:num2' do
  answer = "#{ params[:num1].to_i + params[:num2].to_i }"
  "You are adding #{params[:num1]} and #{params[:num2]} And the answer is: " + answer.to_s
end

get '/calculator/subtract/:num1/:num2' do
  answer = "#{ params[:num1].to_i - params[:num2].to_i }"
  "You are subtracting #{params[:num2]} from #{params[:num1]} And the answer is: " + answer.to_s
end

get '/calculator/multiply/:num1/:num2' do 
  answer = "#{ params[:num1].to_i * params[:num2].to_i }"
  "You are multiplying #{params[:num1]} and #{params[:num2]} And the answer is: " + answer.to_s
end

get '/calculator/divide/:num1/:num2' do 
   answer = "#{ params[:num1].to_i / params[:num2].to_i }"
  "You are dividing #{params[:num1]} by #{params[:num2]} And the answer is: " + answer.to_s
end
