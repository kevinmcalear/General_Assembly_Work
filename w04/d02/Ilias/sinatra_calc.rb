require 'sinatra'
require 'sinatra/reloader'
require 'pry'

def add(x,y)
  puts x+y
  return x+y
end

def sub(x,y)
  puts x-y
  return x-y
end

def mult(x,y)
  puts x*y
  return x*y
end

def div(x,y)
  puts x/y
  return x/y
end

def exp(x,y)
  puts x ** y
  return x ** y
end

past_calculations = {
  1 => "10",
  2 => "20",
  3 => "30"
}

get '/' do
  "Welcome to your Calculatrice!\n"
end

get '/calculator' do
  "#{past_calculations.values.join(" | ")}"
end

get '/calculator/:id' do
  id = params[:id].to_i
  #binding.pry
  if past_calculations[id].nil?
    "NIL"
  else
    "#{past_calculations[id]}"
  end
end

get '/calculator/ops/:method/' do
  #binding.pry

  case params[:method]
  when "add"
    "add"
  when "subtract"
    "subtract"
  when "multiply"
    "multiply"
  when "divide"
    "divide"
  end

end
