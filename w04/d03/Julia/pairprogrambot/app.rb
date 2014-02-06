require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
#require_relative './models/clown'

questions = ["Do you have a test for that?", 
  "Does the test pass?", 
  "Write just enough code for the test to pass.", 
  "Write a test.",
  "Need to refactor?",
  "Refactor the code.",
  "Select a new feature to implement."
  ]
choices = ["Yes", "No", "Done", "Continue"]

#Do you have a test for that?
get("/") do
  @questions = questions[0]
  @choice_1 = choices[0]
  @choice_2 = choices[1]
  @choice_1_link = "/pass"
  @choice_2_link = "/write_test"
  erb(:'bot/two_choices')

end

#Does the test pass?
get("/pass") do 
  #What are we returning?
  @questions = questions[1]
  @choice_1 = choices[0]
  @choice_2 = choices[1]
  @choice_1_link = "/refactor"
  @choice_2_link = "/write_code"
  erb(:'bot/two_choices')
end

#Write Test
get "/write_test" do
  #prompt
  @questions = questions[3]
  @choice = choices[2]
  @choice_link = "/pass"
  erb(:'bot/one_choice')
end

#Refactor
get("/refactor") do 
  #What are we returning?
  @questions = questions[4]
  @choice_1 = choices[0]
  @choice_2 = choices[1]
  @choice_1_link = "/do_refactor"
  @choice_2_link = "/new_feature"
  erb(:'bot/two_choices')
end

#Write Code
get("/write_code") do 
  #What are we returning?
  @questions = questions[2]
  @choice = choices[2]
  @choice_link = "/pass"
  erb(:'bot/one_choice')
end

#Do Refactor
get("/do_refactor") do 
  #What are we returning?
  @questions = questions[5]
  @choice = choices[2]
  @choice_link = "/pass"
  erb(:'bot/one_choice')
end

#New Feature
get("/new_feature") do 
  #What are we returning?
  @questions = questions[6]
  @choice = choices[3]
  @choice_link = "/"
  erb(:'bot/one_choice')
end

