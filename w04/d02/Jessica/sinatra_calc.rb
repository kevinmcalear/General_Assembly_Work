require 'sinatra'
require 'sinatra/reloader'

calculations = {1=> "2+2", 2 => "4*6", 3 => "5/1"}


# #Sinatra Calculator

# ###Objectives:
# - Building a simple Sinatra app with GET and POST

# ###Prompt
# - You will be building a calculator (AGAIN?!?). But this time it will work with the internet :)
# - You should make git commits as you finish each phase, so you can see the history.

# ###Specification:
# - When they visit the homepage (GET) (`/`), a user should see some text to welcome them to the calculator
get '/' do
  "Welcome to the calculator!"  
end

# - When they visit the `/calculator` page (GET), a user should be able to see all of the calculations that have been done in the past

get '/calculator' do
  calculations.values.join(", ") 
end

# - A user can see a the third calculation they've done in the past by visiting `/calculator/3` (GET). Same with any other number. If the calculation doesn't exist, they should see text saying that the id wasn't found.

get '/calculator/:id' do
entry = calculations[params[:id].to_i]

  if entry
    entry
  else
    "None found"
  end
end 

# - A user can POST an Addition calculation to `/calculator/add` by providing 2 numbers as parameters.

post '/calculator/add' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = (num1.to_i + num2.to_i).to_s
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end


# # - Same with `/calculator/subtract`, `/calculator/multiply`, and `/calculator/divide`
# post '/calculator/subtract' do
  
post '/calculator/subtract' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = (num1.to_i - num2.to_i).to_s
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end

post '/calculator/multiply' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = (num1.to_i * num2.to_i).to_s
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end

post '/calculator/divide' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = (num1.to_i / num2.to_i).to_s
  last_id = calculations.keys.max
  calculations[last_id + 1] = answer
end

# # - Use curl to try out your POST
# # - The calculator can add, subtract, multiply and divide.

# # ###Bonus
# # - Translate one line of your MTA app to Sinatra
# # - When I visit `/mta/ts/us` using a GET, I should see "Your trip length from ts to us is 4 stops." in the browser.