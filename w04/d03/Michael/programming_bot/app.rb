require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
# require_relative './views/layout_confirm.erb'
# require_relative './views/layout_question.erb'


get ("/test") do 
  @statement = "Do you have a test for that?"
  erb(:layout_question)
end 

get ("/test_confirm") do 
  @statement = "Write a test"
  erb(:layout_confirm)
end

get ("/pass") do 
  @statement = "Does the test pass?"
  erb(:layout_question)
end 

get ("/pass_confirm") do 
  @statement = "Write just enough code"
  erb(:layout_confirm)
end

get ("/refactor") do 
  @statement = "Do you need to refactor?"
  erb(:layout_question)  
end 

get ("/refactor_confirm") do 
  @statement = "Refactor the Code"
  erb(:layout_confirm)
end

get ("/refactor_confirm_yes") do 
  @statement = "Select a new test"
  erb(:layout_confirm)
end