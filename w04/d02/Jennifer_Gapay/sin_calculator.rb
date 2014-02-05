require 'sinatra'
require 'sinatra/reloader'

sums = {2 => "1 + 1 = 2", 3 => "1 + 2 = 3", 4 => "2 + 2 = 4"}

# When they visit the homepage (GET) (`/`), a user should see some text to welcome them to the calculator

get "/" do
  'Hey! Welcome to the Sinatra Calculator.'  
end

# When they visit the `/calculator` page (GET), a user should be able to see all of the calculations that have been done in the past

get "/calculator" do
  sums.values.join(" , ")
end

# A user can see a the third calculation they've done in the past by visiting `/calculator/3` (GET). Same with any other number. If the calculation doesn't exist, they should see text saying that the id wasn't found.

get "/calculator/:id" do
  id = params[:id].to_i
  entry = sums[id]
  if entry
    entry
  else
    "None found!"
  end
end

# A user can POST an Addition calculation to `/calculator/add` by providing 2 numbers as parameters.

post '/calculator/add' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i

  last_id = sums.keys.max
  sums[last_id + 1] = answer
end

#Subtract
post '/calculator/subtract' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i - num2.to_i

  last_id = sums.keys.max
  sums[last_id + 1] = answer
end

#Multiply
post '/calculator/multiply' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i * num2.to_i

  last_id = sums.keys.max
  sums[last_id + 1] = answer
end

# Divide
post '/calculator/divide' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_f / num2.to_f

  last_id = sums.keys.max
  sums[last_id + 1] = answer
end

# curl -d "num1=5&num2=10" http://localhost:4567/calculator/multiply