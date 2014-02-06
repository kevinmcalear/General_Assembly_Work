require 'sinatra'
require 'sinatra/reloader'

get '/' do
  '<html><center><h1><font color="teal">Welcome to the Sinatra Calculator</html>'
end

calculations = {1 => "4 * 2 = 8", 2 => "2 + 2 = 4"}

get '/calculator' do
  calculations.values.join("<br>")
end

get '/calculator/:id' do
  id = params[:id].to_i
  entry = calculations[id]
  if entry
    entry
  else
    "<html><center><h1><font color='red'>No entries in this space yet.</center></h1></html>"
  end
end

post '/calculator/add' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{num1} + #{num2} = #{answer}"
end

post '/calculator/subtract' do 
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i - num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{num1} - #{num2} = #{answer}"
end

post '/calculator/multiply' do 
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i * num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{num1} * #{num2} = #{answer}"
end

post '/calculator/divide' do 
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i / num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = "#{num1} / #{num2} = #{answer}"
end

