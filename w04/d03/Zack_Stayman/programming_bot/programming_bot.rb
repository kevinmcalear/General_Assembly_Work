require 'sinatra'
require 'sinatra/reloader'
require 'pry'

@@outputs={:testq => "Do you have a test for that?", :passq => "Does the Test Pass?", :refactorq => "Do you need to Refactor?", :refactor => "Refactor the Code", :pass => "Write Just Enough Code to pass", :test => "Write a Test", :new => "Select a New Feature to Implement"}

get('/') do
  @output=@@outputs[:testq]
  @yes="passq"
  @no="test"
  erb(:index)
end



get('/passq') do
  @output=@@outputs[:passq]
  @yes="refactorq"
  @no="pass"
  erb(:index)
end

get('/test') do
  @output=@@outputs[:test]
  @yes="passq"
  erb(:single_response)
end

get('/refactorq') do
  @output=@@outputs[:refactorq]
  @yes="refactor"
  @no="new"
  erb(:index)
end

get('/refactor') do
  @output=@@outputs[:refactor]
  @yes="passq"
  erb(:single_response)
end

get('/new') do
  @output=@@outputs[:new]
  @yes=""
  erb(:single_response)
end

get('/pass') do
  @output=@@outputs[:pass]
  @yes="passq"
  erb(:single_response)
end