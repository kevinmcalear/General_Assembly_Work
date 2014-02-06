require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
# require 'erb'

get("/") do
  @title = "Do you have a test for that?"
  @yes = "/pass"
  @no = "/write_test"
  erb(:option)
end

#if yes, go here
get("/pass") do
  @title = "Does the test pass?"
  @yes = "/refactor"
  @no = "/write_test"
  erb(:option)
end

#if no, go here
get("/write_test") do
  @title = "Write a test."
  @continue = "/pass"
  erb(:final)
  end

#if yes after /pass, go here
  get("/refactor") do
    @title = "Need to refactor?"
    @yes = "/do_refactor"
    @no = "/new_feature"
    erb(:option)
  end

  # if yes, go here
  get("/do_refactor") do
    @title = "Refactor the Code."
    @continue = "/pass"
    erb(:final)
  end
  # goes to pass

#if no, go here
  get("/new_feature") do
    @title = "Select a new feature to implement."
    @continue = "/"
    erb(:final) 
  end




