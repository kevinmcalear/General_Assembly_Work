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
      user_calculations.values.join('\n')
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

get '/add/:num1/:num2' do
  "#{params[:num1]} + #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i}"
end