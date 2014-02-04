require 'sinatra'
require 'sinatra/reloader'

calculations = {1 => "2 * 2 = 4", 2 => "3 + 3 = 6"}

get '/' do
  "Welcome to the first ever internet calculator"
end

get '/calculator' do

calculations.values.join(" : ")

end

  