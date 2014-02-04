require 'sinatra'
require 'sinatra/reloader'

calculations = {1 => "2*2", 2 => "6*8"}

get '/' do 
  "Welcome to the calculator"  
end

get '/calculator' do
  calculations.values.join(", ")
end

get '/calculator/:id' do
  id = params[:id].to_i
  calculation = calculations[id]
  if calculation
    calculation
  else
    "Error"
  end

end

post '/calculator/add' do

  num1 = params[:num1]
num2 = params[:num2]
answer = num1.to_i + num2.to_i
last_id = calculations.keys.max
calculations[last_id + 1] = "#{params[:num1]} + #{params[:num2]} = #{answer}"
  # num_arr = params[:nums].split("+")
  # num_arr.map! {|num| num.to_i}
  # sum = num_arr.reduce(:+)
  # # sum = params[:num1].to_i +  params[:num2].to_i
  # last_id = calculations.keys.max

  # sum = params[:num1].to_i +   params[:num2].to_i

  # # answer = params[:nums] + "=#{sum.to_s}"
  # calculations[last_id + 1] = sum
end

post '/calculator/subtract' do

  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i - num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{params[:num1]} - #{params[:num2]} = #{answer}"
end

post '/calculator/divide' do

  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i / num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{params[:num1]} / #{params[:num2]} = #{answer}"
end

post '/calculator/multiply' do

  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i * num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{params[:num1]} * #{params[:num2]} = #{answer}"
end