require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/') {erb(:profile)}

get('/name') {erb(:name)}

