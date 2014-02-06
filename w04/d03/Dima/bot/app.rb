require 'sinatra'
require 'sinatra/reloader'
require 'pry'

title = ["Do you have test for that?", "Does the test pass?",
 "Write just enough code for test to pass",
"Need to refactor?", "Refactor the code", "Write a test", "Create new feature" ]


get("/") do
 @title = title[0]
 @yes = "/pass"
 @no = "/write_test"
 erb(:index) 
end

get("/pass") do
 @title = title[1]
 @yes = "/refactor"
 @no = "/write_code"
 erb(:index) 
end

get("/write_code") do
 @title = title[2]
 @done = "/pass"
 erb(:one) 
end

get("/refactor") do
 @title = title[3]
 @yes = "/do_refactor"
 @no = "/new_feature"
 erb(:index) 
end

get("/do_refactor") do
 @title = title[4]
 @done = "/pass"
 erb(:one) 
end

get("/write_test") do
 @title = title[5]
 @done = "/pass"
 erb(:one) 
end

get("/new_feature") do
 @title = title[6]
 @done = "/pass"
 erb(:one) 
end