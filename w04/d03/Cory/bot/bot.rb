require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

get("/") do
  @title = "Do you have a test for that?"
  @yes = "/does_it_pass"
  @no = "/write_a_test"
  erb(:view1)
end

get("/does_it_pass") do
  @title = "Does the test pass?"
  @yes = "/refactor"
  @no = "/write_code"
  erb(:'view1')
end

get("/write_a_test") do
  @title = "Write a test"
  @done = "/does_it_pass"
  erb(:'view2')
end

get("/refactor") do
  @title = "Need to refactor?"
  @yes = "/do_refactor"
  @no = "/new_feature"
  erb(:'view1')
end

get("/write_code") do
  @title = "Write just enough code for the test to pass."
  @done = "/does_it_pass"
  erb(:'view2')
end

get("/do_refactor") do
  @title = "Refactor the code"
  @done = "/does_it_pass"
  erb(:'view2')
end

get("/new_feature") do
  @title = "Select a new feature to implement"
  @done = "/"
  erb(:'view2')
end

