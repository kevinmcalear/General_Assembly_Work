require 'sinatra'
require 'sinatra/reloader'
require 'pry'

mta = ["ts", "34th", "28th-n", "23rd-n", "us", "8th"]

get '/mta/:begin/:end' do
  begin_index = mta.index(params[:begin])
  end_index = mta.index(params[:end])

  result = (begin_index - end_index).abs
  "Your trip length from #{params[:begin]} to #{params[:end]} is #{result}."
end