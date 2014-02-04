require 'sinatra'
require 'sinatra/reloader'

calculations = {1 => "2 * 2 = 4", 2 => "3 + 3 = 6"}

get '/' do
  "Welcome to the first ever internet calculator"
end

get '/calculator' do
calculations.values.join(" : ")
end

get '/calculator/:id' do 
  id = params[:id].to_i
  entry = calculations[id]
  if entry
    entry
  else
    "The ID wasn't found"
  end
end

post "/calculator/add" do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer

  "#{num1} + #{num2} = #{answer}"

end

post "/calculator/subtract" do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i - num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer

  "#{num1} + #{num2} = #{answer}"

end

post "/calculator/multiply" do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i * num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer

  "#{num1} + #{num2} = #{answer}"

end

post "/calculator/divide" do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i / num2.to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer

  "#{num1} + #{num2} = #{answer}"

end


  