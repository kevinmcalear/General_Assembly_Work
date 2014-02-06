require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

get("/") do
  @title = "Pick a new feature"
  @link = "/test"
  erb :continue
end

get("/test") do
   @title = "Do you have a test?"
   @yes_link = "/pass"
   @no_link = "/test/no"
   erb :question
 end

get("/test/no") do
  @title = "Write a test."
  @link = "/test"
  erb :continue
end

get("/pass") do
   @title = "Does the test Pass?"
   @yes_link = "/refactor"
   @no_link = "/pass/no"
   erb :question
end

get("/pass/no") do
  @title = "Write enough code to make it pass."
  @link = "/pass"
  erb :continue
end

get("/refactor") do
   @title = "Do you need to refactor?"
   @yes_link = "/refactor/yes"
   @no_link = "/"
   erb :question
end

get("/refactor/yes") do
  @title = "Clean up your code"
  @link = "/pass"
  erb :continue
end