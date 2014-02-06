require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './models/config'
require_relative './models/programming_bot'

# ProgrammingBot.create({
#   result: "Write just enough to pass the test",
# })


get("/") do
  erb(:index)
end

# Read all the program bot results
# Index Action
get("/programming_bots") do
  @programming_bots = ProgrammingBot.all
  erb(:'programming_bots/index')
end