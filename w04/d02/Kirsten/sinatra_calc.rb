require 'sinatra'
require 'sinatra/reloader'

calculator = {1 => "2+2=4", 2 => "4-3=1"}

get '/' do
  "Welcome to the calculator!"
end

get '/calculator' do
  calculator.values.join(", ")
end

get '/calculator/:index' do
  id = params[:index].to_i
  entry = calculator[id]
  if entry
    entry
  else
    "Out of range!"
  end
end

post '/calculator/add' do
  last_id = calculator.keys.max
  total = params[:item_1].to_i + params[:item_2].to_i
  calculator[last_id+1] = "#{params[:item_1]}+#{params[:item_2]}=#{total}"
end
# terminal command: curl -X POST -F item_1="7" -F item_2="6" http://localhost:4567/calculator/add

post '/calculator/subtract' do
  last_id = calculator.keys.max
  total = params[:item_1].to_i - params[:item_2].to_i
  calculator[last_id+1] = "#{params[:item_1]}-#{params[:item_2]}=#{total}"
end
# terminal command: curl -X POST -F item_1="7" -F item_2="6" http://localhost:4567/calculator/subtract

post '/calculator/multiply' do
  last_id = calculator.keys.max
  total = params[:item_1].to_i * params[:item_2].to_i
  calculator[last_id+1] = "#{params[:item_1]}*#{params[:item_2]}=#{total}"
end
# terminal command: curl -X POST -F item_1="7" -F item_2="6" http://localhost:4567/calculator/multiply

post '/calculator/divide' do
  last_id = calculator.keys.max
  total = params[:item_1].to_i / params[:item_2].to_i
  calculator[last_id+1] = "#{params[:item_1]}/#{params[:item_2]}=#{total}"
end
# terminal command: curl -X POST -F item_1="7" -F item_2="6" http://localhost:4567/calculator/divide


