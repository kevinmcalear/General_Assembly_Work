require 'sinatra'
require 'sinatra/reloader'

title = ["Do you have a test for that?", "Write a test.", "Does the test pass?", "Write just enough code for the test to pass.", "Need to refactor?", "Refactor the code.", "Select a new feature to implement."]

continue = ["home", "write_test", "pass_question", "write_code", "refactor_question", "new_feature", "refactor"]
continue2 = ["home", "write_test", "pass_question", "write_code", "refactor_question", "new_feature", "refactor"]

get("/home") do
  @title = title[0]
  @continue = continue[2]
  @continue2 = continue2[1]
  erb(:primary)
end

get("/write_test") do
  @title = title[1]
  @continue = continue[2]
  erb(:secondary)
end

get("/pass_question") do
  @title = title[2]
  @continue = continue[4]
  @continue2 = continue2[3]
  erb(:primary)
end

get("/write_code") do
  @title = title[3]
  @continue = continue[2]
  erb(:secondary)
end

get("/refactor_question") do
  @title = title[4]
  @continue = continue[6]
  @continue2 = continue2[5]
  erb(:primary)
end

get("/new_feature") do
  @title = title[6]
  @continue = continue[0]
  erb(:secondary)
end

get("/refactor") do
  @title = title[5]
  @continue = continue[2]
  erb(:secondary)
end

