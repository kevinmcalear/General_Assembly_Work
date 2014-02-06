require 'sinatra'
require 'sinatra/reloader'

get("/") do
  @question = "Did you write a test?"
  @yes = "/pass_test"
  @no = "/no_answer"
  erb(:index)
end

get("/no_answer") do
  @question = "Write a test"
  @done = "/"
  erb(:no_answer)
end

get("/pass_test") do
  @question = "Did your test pass?"
  @yes = "/refactor"
  @no = "/write_more"
  erb(:index)
end

get("/write_more") do
  @question = "Write just enough code to pass the test"
  @done = "/pass_test"
  erb(:no_answer)
end

get("/refactor") do
  @question = "Do you need to refactor?"
  @yes = "/refactor_more"
  @no = "/new_feature"
erb(:index)
end

get("/refactor_more") do
  @question = "Refactor the code"
  @done = "/refactor"
  erb(:no_answer)
end

get("/new_feature") do
  @question = "Go Home, buddy"
  @done = "/"
  erb(:no_answer)
end



