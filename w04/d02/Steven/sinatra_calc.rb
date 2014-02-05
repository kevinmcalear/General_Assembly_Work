require 'sinatra'
require 'sinatra/reloader'
require 'pry'

  calculations = {1 => "2 + 3 = 5" , 2 => "6 - 4 = 2"} #calculation id  => calculation

get "/" do 
  "Welcome To The Calculator!"
end

get "/calculator" do
  calculations.values.join(" || ")
end

get "/calculator/:id" do
  id = calculations[params[:id].to_i]
  #calculation = calculation[id]
  if id
    id
  else
    "You need to calculate more!"
  end
end

post "/calculator/add" do
  
  sum = params[:num_1].to_i + params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:num_1]} + #{params[:num_2]} = #{sum}"

#curl -d "num_1=2&num_2=3" http://localhost:4567/calculator/add
end

post "/calculator/subtract" do

  sum = params[:num_1].to_i - params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:num_1]} - #{params[:num_2]} = #{sum}"

end

post "/calculator/multiply" do

   sum = params[:num_1].to_i * params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:num_1]} * #{params[:num_2]} = #{sum}"


end

post "/calculator/divide" do

   sum = params[:num_1].to_i / params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:num_1]} / #{params[:num_2]} = #{sum}"


end







