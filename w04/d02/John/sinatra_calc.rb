require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = {1 => "1 + 2 = 3", 2 => "4 * 5 = 20"}

get '/' do
  "Welcome to a Calculator on the Internet!"
end

get '/calculator' do
  calculations.values.join("<br>")
end

get '/calculator/:id' do
  calc = calculations[params[:id].to_i]
  if calc
    calc
  else
    "Entry not found!"
  end
end

post '/calculator/:operation' do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  last_id = calculations.keys.max

  case params[:operation]
  when 'add'
    result = num1 + num2
    operation = "+"
  when 'subtract'
    result = num1 - num2
    operation = "-"
  when 'multiply'
    result = num1 * num2
    operation = "*"
  when 'divide'
  result = num1.to_f / num2.to_f
  operation = "/"
  end

  calculations[last_id + 1] = "#{num1} #{operation} #{num2} = #{result}"
end
