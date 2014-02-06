require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# @answer1 = "Write a test"
# @answer2 = ""
# @opt


# if CONTINUE => Do you have a test for that? => Yes1 No1
# if NO1 => Write a test. => Done1
# Or If Done1 If YES1 => Does the test pass? => Yes2 No2
# If NO2 =>Write just enough code for the test to pass. => Done
# If YES2 => Need to refactor? => Yes No
# If YES => Refactor the code. => Done
# If NO => Select a new feature to implement. => Continue



get("/index") do
  @answer = "Do you have a test for that?"
  @link1 = "pass"
  @link2 = "write_test"
  erb(:two_button)
end
get("/") do
  @answer = "Do you have a test for that?"
  @link1 = "pass"
  @link2 = "write_test"
  erb(:two_button)
end

get("/pass") do
  @answer = "Does the test pass?"
  @link1 = "refactor"
  @link2 = "write_code"
  erb(:two_button)
end

get("/refactor") do
  @answer = "Need to refactor?"
  @link1 = "do_refactor"
  @link2 = "new_feature"
  erb(:two_button)
end

get("/write_test") do
  @answer = "Write a test."
  @link = "pass"
  @button = "Done."
  erb(:one_button)
end

get("/new_feature") do
  @answer = "Select a new feature to implement."
  @link = "index"
  @button = "Continue."
  erb(:one_button)
end

get("/write_code") do
  @answer = "Write just enough code for the test to pass."
  @link = "pass"
  @button = "Done."
  erb(:one_button)
end

get("/do_refactor") do
  @answer = "Refactor the code."
  @link = "pass"
  @button = "Done."
  erb(:one_button)
end