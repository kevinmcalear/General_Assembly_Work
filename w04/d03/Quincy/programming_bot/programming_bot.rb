require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/pp_1'

pp_res = {:programming_bot => "Do you have a test?", :test_pass => "Does your test pass?", :refactor_ques => "Do you have to refactor?", :write_test => "Write a test.", :make_testpass => "Make the test pass.", :new_feat => "Develop a new feature.", :refactor_ans => "Refactor your code."}

get("/programming_bot") do
  @output = pp_res[:programming_bot]
  @yes = "test_pass"
  @no = "write_test"
  erb(:'/programming_bot/pp_1')
end

get("/test_pass") do
  @output = pp_res[:test_pass]
  @yes = "refactor_ques"
  @no = "make_testpass"
  erb(:'/programming_bot/pp_1')
end

get("/write_test") do
  @output = pp_res[:write_test]
  erb(:'/programming_bot/pp_1')
end

get("/refactor_ques") do
  @output = pp_res[:refactor_ques]
  @yes = "refactor_ans"
  @no = "new_feat"
  erb(:'/programming_bot/pp_1')
end

get("/make_testpass") do
  @output = pp_res[:make_testpass]
  erb(:'/programming_bot/pp_1')
end

get("/refactor_ans") do
  @output = pp_res[:refactor_ans]
  erb(:'/programming_bot/pp_1')
end

get("/new_feat") do
  @output = pp_res[:new_feat]
  erb(:'/programming_bot/pp_1')
end