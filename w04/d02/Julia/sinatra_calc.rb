require 'sinatra'
require 'sinatra/reloader'


calculations = {1 => "1 + 2 = 3"}

#homepage
get "/" do
  "Welcome to the Calculator!"
end

#calculator page – shows all calculations
get "/calculator" do 
  if calculations.count > 0
    calculations.values.join(", ")
  else
    "You don't have any calculations yet!"
  end
end

# post "/calculator" do
#   "#{calculations}"
# end

#ability to see the nth calculation
get "/calculator/:id" do 

  id = params[:id].to_i
  calculation = calculations[id]

  if calculation 
    calculation
  else
    "Not found! You haven't done that calculation."
  end

end

#ability to POST an Addition calculation
post "/calculator/add" do
  number_1 = params[:number_1].to_f
  number_2 = params[:number_2].to_f
  sum = number_1 + number_2
  result = "#{number_1} + #{number_2} = #{sum}"
  last_id = calculations.keys.max
  calculations[last_id + 1] = result
end

#ability to POST an Subtraction calculation
post "/calculator/subtract" do
  number_1 = params[:number_1].to_f
  number_2 = params[:number_2].to_f
  difference = number_1 - number_2
  result = "#{number_1} - #{number_2} = #{difference}"
  last_id = calculations.keys.max
  calculations[last_id + 1] = result
end

#ability to POST a multiplication calculation
post "/calculator/multiply" do
  number_1 = params[:number_1].to_f
  number_2 = params[:number_2].to_f
  product = number_1 * number_2
  result = "#{number_1} * #{number_2} = #{product}"
  last_id = calculations.keys.max
  calculations[last_id + 1] = result
end

#ability to POST a division calculation
post "/calculator/divide" do
  number_1 = params[:number_1].to_f
  number_2 = params[:number_2].to_f
  quotient = number_1 / number_2
  result = "#{number_1} / #{number_2} = #{quotient}"
  last_id = calculations.keys.max
  calculations[last_id + 1] = result
end