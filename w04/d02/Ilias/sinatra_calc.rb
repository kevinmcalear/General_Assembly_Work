require 'sinatra'
require 'sinatra/reloader'

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
  "Welcome to your Calculatrice!"
end

get '/calculator' do
  "#{past_calculations.values.join(" | ")}"
end
