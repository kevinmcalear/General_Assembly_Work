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
  sum = params[:num_1].to_i + params[:num_2].to_i
  last_id = calculations.keys.max
  calculations[last_id + 1] =
  "#{params[:num_1]} + #{params[:num_2]} = #{sum}"

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


  