require 'sinatra'
require 'sinatra/reloader'

calculator = { 1=>"Add 2 and 2", 2=>"Add 2 and 3" }

#a user should see some text to welcome them to the calculator

get '/' do
  "Welcome to the Calculator!"
end

#a user should be able to see all of the calculations that have been done in the past
get '/calculator' do
  calculator.values.join(", ")
end

#A user can see a the third calculation they've done in the past by visiting /calculator/3 (GET). Same with any other number. If the calculation doesn't exist, they should see text saying that the id wasn't found.
get '/calculator/:id' do
  id = params[:id].to_i
  entry = calculator[id]
  if entry
    entry
  else
    "The id wasn't found"
  end
end

#A user can POST an Addition calculation to /calculator/add by providing 2 numbers as parameters.
post '/calculator' do
  last_id = calculator.keys.max
  calculator[last_id + 1] = "param[:name]"
end

get '/calculator/:choice/:num1/:num2' do
  choice = params[:choice].downcase
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  case choice
  when "add"
    "#{choice} #{num1} and #{num2} = #{num1 + num2}"
  when "subtract"
    "#{choice} #{num1} and #{num2} = #{num1 - num2}"
  when "multiply"
    "#{choice} #{num1} and #{num2} = #{num1 * num2}"
  when "divide"
    "#{choice} #{num1} by #{num2} = #{num1 / num2}"
  end
end
