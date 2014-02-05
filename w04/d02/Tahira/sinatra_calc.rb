require "sinatra"
require "sinatra/reloader"
require 'pry'

get '/' do 
  "Welcome to Calculator!"
end

calculations = {1=> "1 + 1 = 2"}


get '/calculator' do
  calculations.values.join(", ")
end

get '/calculator/:id' do
  id = params[:id].to_i
  calc = calculations[id]
  if calc
    calc
  else
    "NONE FOUND SILLY!!"
  end
end

post '/calculator/add' do
  answer = params[:num1].to_i + params[:num2].to_i
  calc = "#{params[:num1]} + #{params[:num2]} = #{answer}"
  last_id = calculations.keys.max
  calculations[last_id +1]= calc
end

post '/calculator/subtract' do
  answer = params[:num1].to_i - params[:num2].to_i
  calc = "#{params[:num1]} - #{params[:num2]} = #{answer}"
  last_id = calculations.keys.max
  calculations[last_id +1]= calc
end

post '/calculator/multiply' do
  answer = params[:num1].to_i * params[:num2].to_i
  calc = "#{params[:num1]} * #{params[:num2]} = #{answer}"
  last_id = calculations.keys.max
  calculations[last_id +1]= calc
end

post '/calculator/divide' do
  answer = params[:num1].to_i / params[:num2].to_i
  calc = "#{params[:num1]} / #{params[:num2]} = #{answer}"
  last_id = calculations.keys.max
  calculations[last_id +1] = calc
end
