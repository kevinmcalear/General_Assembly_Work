require 'sinatra'
require 'sinatra/reloader'
require 'pry'

user_calculations = {}

get '/' do

  "Welcome to the NEW Calculator -- Brought to you by Sinatra

  "
end

get '/calculator' do
    if user_calculations.empty? == true
      "There are no calulations yet! Please add some NOW."
    else
      # binding.pry
      user_calculations.values.join("\n")
    end
end

get '/calculator/:id' do
  id = params[:id].to_i
  search = user_calculations[id]

  if search
    search
  else
    "No calculation here, SUCKER! Maybe you should make one. ;)"
  end
end

get '/calculator/add/:num1/:num2' do
  "#{params[:num1]} + #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i}"
end

post '/calculator/:operator' do
  last_id = user_calculations.keys.max
  first_num = params[:num1].to_i
  second_num  = params[:num2].to_i

  case params[:operator]
  when "add"
    user_option = "+"
  when "subtract"
    user_option = "-"
  when "multiply"
    user_option = "*"
  when "divide"
    user_option = "/"
  end

  equation_to_eval = "#{first_num} #{user_option} #{second_num}"

  if user_calculations.empty? == true
    user_calculations[1] = "#{equation_to_eval} = #{eval(equation_to_eval)}<br>"
  else
    user_calculations[last_id + 1] = "#{equation_to_eval} = #{eval(equation_to_eval)}<br>"
  end
end

# post '/calculator/add' do
#   last_id = user_calculations.keys.max
#   first_num = params[:num1].to_i
#   second_num  = params[:num2].to_i
#   if user_calculations.empty? == true
#     user_calculations[1] = "#{first_num} + #{second_num} = #{first_num + second_num}<br>"
#   else
#     user_calculations[last_id + 1] = "#{first_num} + #{second_num} = #{first_num + second_num}<br>"
#   end
# end

# post '/calculator/subtract' do
#   last_id = user_calculations.keys.max
#   first_num = params[:num1].to_i
#   second_num  = params[:num2].to_i
#   if user_calculations.empty? == true
#     user_calculations[1] = "#{first_num} - #{second_num} = #{first_num - second_num}<br>"
#   else
#     user_calculations[last_id + 1] = "#{first_num} - #{second_num} = #{first_num - second_num}<br>"
#   end
# end

# post '/calculator/multiply' do
#   last_id = user_calculations.keys.max
#   first_num = params[:num1].to_i
#   second_num  = params[:num2].to_i
#   if user_calculations.empty? == true
#     user_calculations[1] = "#{first_num} x #{second_num} = #{first_num * second_num}<br>"
#   else
#     user_calculations[last_id + 1] = "#{first_num} x #{second_num} = #{first_num * second_num}<br>"
#   end
# end

# post '/calculator/divide' do
#   last_id = user_calculations.keys.max
#   first_num = params[:num1].to_i
#   second_num  = params[:num2].to_i
#   if user_calculations.empty? == true
#     user_calculations[1] = "#{first_num} / #{second_num} = #{first_num / second_num}<br>"
#   else
#     user_calculations[last_id + 1] = "#{first_num} / #{second_num} = #{first_num / second_num}<br>"
#   end
# end

