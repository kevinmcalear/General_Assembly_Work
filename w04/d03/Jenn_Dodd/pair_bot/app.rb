require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

get("/") do
  erb(:index)
  redirect to("/pairbot")
end

get("/pairbot") do
  @title = "Do you have a test for that?"
  @yes = "test_pass"
  @no = "write_test"
  erb(:"pairbot/two_choice")
end

get("/pairbot/test_pass") do
  @title = "Does this test pass?"
  @yes = "need_refactor"
  @no = "write_enough"
  erb(:"pairbot/two_choice")
end

get("/pairbot/write_test") do
  @title = "Write a test, dork!"
  @text = "Done"
  @button = "/pairbot"
  erb(:"pairbot/one_choice")
end

get("/pairbot/write_enough") do
  @title = "Write just enough code to make the test pass."
  @text = "Done"
  @button = "/pairbot/test_pass"
  erb(:"pairbot/one_choice")
end

get("/pairbot/need_refactor") do
  @title = "Do you need to refactor?"
  @yes = "refactor"
  @no = "new_feature"
  erb(:"pairbot/two_choice")
end

get("/pairbot/refactor") do
  @title = "Refactor your code!"
  @text = "Done"
  @button = "/pairbot/test_pass"
  erb(:"pairbot/one_choice")
end

get("/pairbot/new_feature") do
  @title = "Pick a new feature!"
  @text = "Continue"
  @button = "/pairbot"
  erb(:"pairbot/one_choice")
end