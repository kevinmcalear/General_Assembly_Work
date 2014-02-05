require 'sinatra'
require 'sinatra/reloader'

calculator = {}

get "/" do
  "Welcome to the Calculator, yo."
end

get "/calculator" do 
  if calculator.values.count > 0
    calculator.values.join('<br> ')
  else
    "Do some calculations!"
  end
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculator[id]
  if entry 
    entry
  else
    "None found. You really do stink at math."
  end
end

#Posts


post "/calculator/divide" do
  last_id = calculator.keys.max
  if last_id == nil
    last_id = 1
  end
  divide = (params[:number1].to_f / params[:number2].to_f)
  calculator[last_id + 1] = "#{params[:number1]} / #{params[:number2]} = #{divide}"
end

#CURL: curl -d "number1="3"&number2="3"" http://localhost:4567/calculator/divide

post "/calculator/multiply" do
  last_id = calculator.keys.max
  if last_id == nil
    last_id = 1
  end
  multiply = (params[:number1].to_i * params[:number2].to_i)
  calculator[last_id + 1] = "#{params[:number1]} * #{params[:number2]} = #{multiply}"
end

#CURL: curl -d "number1="3"&number2="2"" http://localhost:4567/calculator/multiply

post "/calculator/subtract" do
  last_id = calculator.keys.max
  if last_id == nil
    last_id = 1
  end
  subtract = (params[:number1].to_i - params[:number2].to_i)
  calculator[last_id + 1] = "#{params[:number1]} - #{params[:number2]} = #{subtract}"
end

#CURL: curl -d "number1="7"&number2="2"" http://localhost:4567/calculator/subtract

post "/calculator/add" do
  last_id = calculator.keys.max
  if last_id == nil
    last_id = 1
  end
  add = (params[:number1].to_i + params[:number2].to_i)
  calculator[last_id + 1] = "#{params[:number1]} + #{params[:number2]} = #{add}"
end

#CURL: curl -d "number1="3"&number2="2"" http://localhost:4567/calculator/add

#=========================================================#

#Fun, but not saving

get'/calculator/add/:number1/:number2' do
  add = (params[:number1].to_i + params[:number2].to_i)
  "#{params[:number1]} + #{params[:number2]} = #{add}"
end

get'/calculator/subtract/:number1/:number2' do
  subtract = (params[:number1].to_i - params[:number2].to_i)
  "#{params[:number1]} - #{params[:number2]} = #{subtract}"
end

get'/calculator/multiply/:number1/:number2' do
  multiply = (params[:number1].to_i * params[:number2].to_i)
  "#{params[:number1]} * #{params[:number2]} = #{multiply}"
end

get'/calculator/divide/:number1/:number2' do
  divide = (params[:number1].to_f / params[:number2].to_f)
  "#{params[:number1]} / #{params[:number2]} = #{divide}"
end







