require 'sinatra'
require 'sinatra/reloader'

get("/") do 
  @title = "Do you have a test for that?"
  @yes = "/pass"
  @no = "/write_test"
  erb(:options)
end

get("/pass") do 
  @title = "Does this test pass?"
  @yes = "/refactor"
  @no = '/write_code'
  erb(:options)
end

get("/refactor") do 
  @title = "Need to refactor?"
  @yes = "/do_refactor"
  @no =  "/new_feature"
  erb(:options)
end 

get("/do_refactor") do 
  @title = "Refactor code"
  @done = "/"
  erb(:done)
end

get("/write_code") do 
  @title = "Write just enough code to pass the test"
  @done = "/"
  erb(:done)
end

get ("/write_test") do 
  @title = "Write a test"
  @done = "/"
  erb(:done)
end

get("/new_feature") do 
  @title = "Select a new feature to implement"
  @done = "/"
  erb(:done)
end


