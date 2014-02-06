require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'

get("/") do
  erb(:index)
end