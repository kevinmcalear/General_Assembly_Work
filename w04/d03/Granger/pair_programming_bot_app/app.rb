
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


get("/") do
  @question = "Do you have a test for that?"
  @yes = "test"
  @no = "no_test"
  erb(:'bot/question')  
end

get("/test") do
  @question = "Does the test pass?"
  @yes = "pass"
  @no = "fail"
  erb(:'bot/question')
end

get("/no_test") do
  @declare = "Write a test."
  @next = "test"
  erb(:'bot/response')
end

get("/pass") do
  @question = "Need to refactor?"
  @yes = "not_refactored"
  @no = "refactored"
  erb(:'bot/question')
end

get("/fail") do
  @declare = "Write just enough to pass the test."
  @next = "test"
  erb(:'bot/response')
end

get("/not_refactored") do
  @declare = "Refactor."
  @next = "test"
  erb(:'bot/response')
end

get("/refactored") do
  @declare = "Implement a new feature."
  @next = "../"
  erb(:'bot/response')
end