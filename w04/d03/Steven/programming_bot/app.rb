require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get ("/") do 
  @question = "Do you have a test?"
  @yes = "/does_it_pass"
  @no = "/write_test"
  erb(:yes_no)
end

get("/write_test") do
  @question = "Write A Test!"
  @continue = "/does_it_pass"
  erb(:continue)
end

get("/does_it_pass") do
  @question = "Does it pass?"
  @yes = "/need_refactor"
  @no =  "/write_enough"
  erb(:yes_no)
end

get("/write_enough") do
  @question = "Write just enough code to make it pass!"
  @continue = "/need_refactor"
  erb(:continue)
end

get("/need_refactor") do
  @question = "Does it need refactoring?"
  @yes = "/refactor_code"
  @no = "/new_feature"
  erb(:yes_no)
end

get("/new_feature") do
  @question = "Select a new feature to implement!"
  @continue = "/"
  erb(:continue)
end

get("/refactor_code") do
  @question = "Refactor the code!"
  @continue = "/new_feature"
  erb(:continue)
end











