require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

get("/") do
  @question ="Do you have a test for that?"
  @link1 = "pass"
  @link2 = "write_test"
  erb(:'bot/two_button')
end

get('/pass') do
  @question = "Does the test pass?"
  @link1 = "refactor"
  @link2 = "write_code"
    erb(:'bot/two_button')
end

get('/refactor') do
  @question = "Do you need to refactor?"
  @link1 = "do_refactor"
  @link2 = "new_feature"
  erb(:'bot/two_button')
end

get('/write_code') do
  @question = "Write enough code for the test to pass."
  @link1 = "pass"
  @button = "Continue"
  erb(:'bot/one_button')
end

get('/write_test') do
  @question = "Write a test"
  @link1 = "pass"
  @button = "Done"
  erb(:'bot/one_button')
end

get('/do_refactor') do
  @question = "Refactor the code"
  @link1 = "pass"
  @button = "Done"
  erb(:'bot/one_button')
end

get('/new_feature') do
  @question = "Select a new feature to implement"
  @link1 = "../"
  @button = "Done"
  erb(:'bot/one_button')
end





