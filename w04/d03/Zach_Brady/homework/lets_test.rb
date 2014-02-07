require 'sinatra'
require 'sinatra/reloader'

get("/") do
  @question = "Do you have a test for that?"
  @yes_url = "/test_pass"
  @no_url = "/write_test"
  erb(:branch)
end

get("/write_test") do
  @do_this = "Write a test."
  @back_to_branch = "/test_pass"
  erb(:do_this)
end

get("/test_pass") do
  @question = "Does the test pass?"
  @yes_url = "/need_refactor"
  @no_url = "/just_enough"
  erb(:branch)
end

get("/just_enough") do
  @do_this = "Write just enough code for the test to pass."
  @back_to_branch = "/test_pass"
  erb(:do_this)
end

get("/need_refactor") do
  @question = "Need to refactor?"
  @yes_url = "/refactor_code"
  @no_url = "/select_new_feature"
  erb(:branch)
end

get("/refactor_code") do
  @do_this = "Refactor the code."
  @back_to_branch = "/test_pass"
  erb(:do_this)
end

get("/select_new_feature") do
  @do_this = "Select a new feature to implement."
  @back_to_branch = "/"
  erb(:do_this)
end