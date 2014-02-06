require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
# require_relative './views/layout_confirm.erb'
# require_relative './views/layout_question.erb'

"/test"



get ("/test") do 
  @statement = "Do you have a test for that?"
  @yes = "/pass"
  @no = "/test_confirm"
  erb(:layout_question)
end 

get ("/test_confirm") do 
  @statement = "Write a test"
  @done = "/test"
  erb(:layout_confirm)
end

get ("/pass") do 
  @statement = "Does the test pass?"
  @yes = "/refactor"
  @no = "/pass_confirm"
  erb(:layout_question)
end 

get ("/pass_confirm") do 
  @statement = "Write just enough code"
  @done = "/pass"
  erb(:layout_confirm)
end

get ("/refactor") do 
  @statement = "Do you need to refactor?"
  @yes = "/refactor_confirm"
  @no = "/pass_confirm_confirm_yes"
  erb(:layout_question)  
end 

get ("/refactor_confirm") do 
  @statement = "Refactor the Code"
  @done = "/refactor"
  erb(:layout_confirm)
end

get ("/refactor_confirm_yes") do 
  @statement = "Select a new test"
  erb(:layout_confirm)
end