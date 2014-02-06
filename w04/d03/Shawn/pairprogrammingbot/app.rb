 require 'sinatra'
 require 'sinatra/reloader'

 get("/") do 
  @text = "Do you have a test for that?"
  @link1 = "/pass"
  @link2 = "/done/write_test"
  erb(:'index')
end

get("/done/write_test") do 
  @done_text = "Write a test. Silly pants."
  @done_button = "/pass"
  @button_text = "Done"
  erb(:'done/index')
end

get("/pass") do 
  @text = "Does the test pass?"
  @link1 = "/refactor"
  @link2 = "/done/write_code"
  erb(:index)
end

get("/done/write_code") do 
  @done_text = "Write some code to make the test pass...But please hurry!"
  @done_button = "/pass"
  @button_text = "Done"
  erb(:'done/index')
end

get("/refactor") do 
  @text = "Need to refactor?"
  @link1 = "/done/do_refactor"
  @link2 = "/done/new_feature"
  erb(:index)
end

get("/done/do_refactor") do 
  @done_text = "Refactor your code"
  @done_button = "/pass"
  @button_text = "Done"
  erb(:'done/index')
end

get("/done/new_feature") do 
  @done_text = "Select a new feature to implement..."
  @done_button = "/"
  @button_text = "Continue"
  erb(:'done/index')
end



