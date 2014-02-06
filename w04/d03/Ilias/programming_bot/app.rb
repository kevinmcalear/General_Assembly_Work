require 'sinatra'
require 'sinatra/reloader'
require 'pry'

question = ["Do you have a test for that?", "Write a test", "Does the test pass?", "Need to refactor?", "Write just enough code to pass", "Refactor the code", "Select a new feature to impliment!"]
path = ["/", "/pass", "/write_test", "/refactor", "/do_refactor", "/write_code", "/new_feature" ]

get ('/') do
  @prompt = question[0]
  @yespath = path[1]
  @nopath = path[2]
  erb(:index)
end

get ('/pass') do
  @prompt = question[2]
  @yespath = path[3]
  @nopath = path[5]
  erb(:index)
end

get ('/write_test') do
  @prompt = question[1]
  @path = path[1]
  erb(:stepping_stone)
end

get ('/refactor') do
  @prompt = question[3]
  @yespath = path[4]
  @nopath = path[6]
  erb(:index)
end

get ('/do_refactor') do
  @prompt = question[5]
  @path = path[1]
  erb(:stepping_stone)
end

get ('/write_code') do
  @prompt = question[4]
  @path = path[1]
  erb(:stepping_stone)
end

get ('/new_feature') do
  @prompt = question[6]
  @path = path[0]
  erb(:stepping_stone)
end
