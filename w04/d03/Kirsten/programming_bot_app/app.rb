require 'sinatra'
require 'sinatra/reloader'
require 'pry'

@@responses = { :start => "Do you have a test for that?",
  :has_test => "Does the test pass?",
  :test_passes => "Need to refactor?",
  :need_refactor => "Refactor the code",
  :test_fails => "Write just enough code for the test to pass.",
  :no_test => "Write a test",
  :done => "Select a new feature to implement." }
  
get('/') do
  @output=@@responses[:start]
  @yes = "has_test"
  @no = "no_test"
  erb(:index)
end

get('/has_test') do
  @output=@@responses[:has_test]
  @yes = "test_passes"
  @no = "test_fails"
  erb(:index)
end

get('/test_fails') do
  @output=@@responses[:test_fails]
  @done = "has_test"
  erb(:single_response)
end

get('/no_test')do
  @output=@@responses[:no_test]
  @done = "has_test"
  erb(:single_response)
end

get('/test_passes') do
  @output=@@responses[:test_passes]
  @yes = "need_refactor"
  @no = "done"
  erb(:index)
end

get('/need_refactor') do
  @output=@@responses[:need_refactor]
  @done = "has_test"
  erb(:single_response)
end

get('/done') do
  @output=@@responses[:done]
  @done = ""
  erb(:single_response)
end