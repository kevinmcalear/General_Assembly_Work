require 'sinatra'
require 'sinatra/reloader'

get("/") do
  @pass = "Do you have a test for that?"
  @yes = "pass"
  @no = "write_test"
  erb(:yesno)
end

get("/yesno") do
  erb(:yesno)
end

get("/done") do 
  erb(:done)
end

get("/yesno/pass") do 
  @pass = "Does the test pass?"
  @yes = "refactor"
  @no = "write_code"
  erb(:yesno)
end

get("/done/write_test") do 
  @pass = "Write a test"
  @done = "pass"
  erb(:done)
end

get("/yesno/refactor") do 
  @pass = "Need to refactor?"
  @yes = "do_refactor"
  @no = "new_feature"
  erb(:yesno)
end

get("/done/write_code") do 
  @pass = "Write just enough code for the test to pass."
  @done = "pass"
  erb(:done)
end

get("/yesno/do_refactor") do 
  @pass = "Need to refactor?"
  @yes = "do_refactor"
  @no = "new_feature"
  erb(:yesno)
end

get("/done/new_feature") do 
  @pass = "Select a new feature to implement."
  @done = ""
  erb(:done)
end
