require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'


get("/") do
  @question = "Do you have a test for that?"
  @link1 = "does_it_pass" 
  @link2 = "write_test"
  erb(:'two_options')
end

get("/does_it_pass") do
  @question = "Does the test pass?"
  @link1 = "need_to_refactor" 
  @link2 = "does_not_pass"
  erb(:'two_options')
end

get("/need_to_refactor") do
  @question = "Do you need to refactor?"
  @link1 = "do_refactor" 
  @link2 = "new_feature"
  erb(:'two_options')
end

get("/write_test") do
  @statement = "Write the test"
  @link = ""
  erb(:'one_option')
end

get("/does_not_pass") do
  @statement = "Write just enough code for the test to pass"
  @link = "does_it_pass"
  erb(:'one_option')
end

get("/do_refactor") do
  @statement = "Refactor the code"
  @link = "does_it_pass"
  erb(:'one_option')
end

get("/new_feature") do
  @statement = "Select a new feature to implement"
  @link = "index"
  erb(:'one_option')
end

