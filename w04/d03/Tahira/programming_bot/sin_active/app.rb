require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'

get("/index") do
  erb(:'test_stages/index')
end

get("/") do
  erb(:'test_stages/index')
end

get("/write_test") do
  erb(:'test_stages/write_test')
end

get("/pass") do
  erb(:'test_stages/pass')
end

get("/refactor") do
  erb(:'test_stages/refactor')
end

get("/new_feature") do
  erb(:'test_stages/new_feature')
end

get("/write_code") do
  erb(:'test_stages/write_Code')
end
