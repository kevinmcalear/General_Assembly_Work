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