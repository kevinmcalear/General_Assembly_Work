##To Do:
## 4) Dry Up Code. 


require 'sinatra'
require 'sinatra/reloader'
require 'pry'

calculations = [["2+2",4],["3+3",6]]

get '/homepage' do 
  "Welcome to the Sinatra Calculator"
end 

get '/calculator' do 
  calculations.each {|calculation| puts calculation}.to_s
end 

get '/calculator/:num' do 
  calc_num = params[:num].to_i  
  if calc_num <= calculations.length
    calculations[ calc_num -1 ].to_s
  else
    "NONE FOUND"
  end 
end 

post '/calculator/add' do 
  array_insert = calculations.length
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  formula = params[:first_num]+ "+"+ params[:second_num]
  sum = first_num + second_num
  array = []
  array.push(formula) 
  array.push(sum.to_s) 
  calculations[array_insert] = array
end 
# curl -d "first_num=5&second_num=10" http://localhost:4567/calculator/add

post '/calculator/subtract' do 
  array_insert = calculations.length
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  formula = params[:first_num]+ "-"+ params[:second_num]
  difference = first_num - second_num
  array = []
  array.push(formula) 
  array.push(difference.to_s) 
  calculations[array_insert] = array
end
# curl -d "first_num=5&second_num=10" http://localhost:4567/calculator/subtract

post '/calculator/multiply' do 
  array_insert = calculations.length
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  formula = params[:first_num]+ "*"+ params[:second_num]
  product = first_num * second_num
  array = []
  array.push(formula) 
  array.push(product.to_s) 
  calculations[array_insert] = array
end 
# curl -d "first_num=5&second_num=10" http://localhost:4567/calculator/multiply

post '/calculator/divide' do 
  array_insert = calculations.length
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  formula = params[:first_num]+ "/"+ params[:second_num]
  dividend = first_num / second_num
  array = []
  array.push(formula) 
  array.push(dividend.to_s) 
  calculations[array_insert] = array
end
# curl -d "first_num=5&second_num=10" http://localhost:4567/calculator/divide


#####BONUS#########
# /mta/ts/us
get'/mta/:start/:finish' do
  n_line = ['ts','34th','28th-n','23rd-n','us']
  start_index = n_line.index( params[:start])
  finish_index = n_line.index( params[:finish] )
  stops = (start_index - finish_index).abs
  "Your trip length from #{params[:start]} to #{params[:end]} will be #{stops} stops"
end 


