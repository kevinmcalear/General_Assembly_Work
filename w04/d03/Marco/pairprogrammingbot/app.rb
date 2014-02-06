require 'sinatra'
require 'sinatra/reloader'
require 'pry'
# require_relative './models/click'

get('/') do
  @question = "Do you have a test for that?"
  @yes = "pass_q"
  @no = "write_test"
 erb(:index)
end

get('/write_test') do
  @question = "Write a test."
  @done = "../"
  erb(:index2)

end

get('/pass_q') do
  @question = "Does the test pass?"
  @yes = "refactor_q"
  @no = "just_enough"
  erb(:index)
end

get('/refactor_q') do
  @question = "Need to refactor?"
  @yes = "refactor"
  @no = "new_feature"
  erb(:index)

end

get('/just_enough') do
  @question = "Write just enough code for the test to pass."
  @done = "../"
  erb(:index2)

end

get('/new_feature') do
  @question = "Select a new feature to implement."
  @done = "../"
  erb(:index2)

end

get('/refactor') do
  @question = "Refactor the code."
  @done = "../"
  erb(:index2)

end




