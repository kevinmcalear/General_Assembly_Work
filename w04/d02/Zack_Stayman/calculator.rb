require 'sinatra'
require 'sinatra/reloader'
require 'pry'


calculations = {1=>"1 + 1 = 2"}
add = Array.new



get '/' do
  "WELCOME TO THE CALCULATOR"
end

get '/calculator' do
  calculations.values.join("<html><br></html>")
end

get '/calculator/:id' do
  if params[:id] == nil
    "Invalid entry"
  else
    calculations[params[:id].to_i]
  end
end

post '/calculator/add' do
  sum = params[:add1].to_i + params[:add2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:add1]} + #{params[:add2]} = #{sum}"

end

post '/calculator/subtract' do
  result = params[:sub1].to_i - params[:sub2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:sub1]} - #{params[:sub2]} = #{result}"

end


post '/calculator/multiply' do
  result = params[:mult1].to_i * params[:mult2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:mult1]} * #{params[:mult2]} = #{result}"

end

post '/calculator/divide' do
  result = params[:div1].to_i / params[:div2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:div1]} * #{params[:div2]} = #{result}"

end